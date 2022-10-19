import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openid_client/openid_client_io.dart';
import 'package:soff_cricket_hybrid/models/user/user_model.dart';
import 'package:soff_cricket_hybrid/services/auth/token_manager_service.dart';
import 'package:soff_cricket_hybrid/services/auth/user_manager_service.dart';
import 'package:soff_cricket_hybrid/services/customer_service.dart';
import 'package:soff_cricket_hybrid/utils/datetime_utils/datetime_util.dart';
import 'package:soff_cricket_hybrid/views/_shared/constants/app_constants.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/toast.dart';
import 'package:url_launcher/url_launcher.dart';

class KeyCloakAuthService extends FullLifeCycleController {
  static Future<Credential> authenticate() async {
    var uri = Uri.https("auth2.gangfy.com", "/auth/realms/gangfy"); // auth2
    var issuer = await Issuer.discover(uri);
    var client = Client(issuer, "gangfy_booking");

    urlLauncher(String url) async {
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url),
            webViewConfiguration:
                const WebViewConfiguration(enableJavaScript: true));
      } else {
        throw 'Could not launch $url';
      }
    }

    var authenticator = Authenticator(
      client,
      scopes: ['openid', 'profile', 'email', 'offline_access'],
      port: 4200,
      urlLancher: urlLauncher,
      // redirectUri: redirectUri
    );

    var c = await authenticator.authorize();
    // close the webview when finished
    closeInAppWebView();
    return c;
  }

  static refreshToken() async {
    if (isTokenExpired()) {
      toastBottom(AppConstants.sessionExpiredWarningMessage);
      var dio = Dio();
      TokenManager _tokenManager = Get.find<TokenManager>();
      String? refreshToken = _tokenManager.getRefreshToken();

      Map<String, dynamic> requestBody = {
        'grant_type': 'refresh_token',
        'client_id': 'gangfy_booking',
        'refresh_token': refreshToken!
      };

      try {
        var response = await dio.post(
          'https://auth2.gangfy.com/auth/realms/gangfy/protocol/openid-connect/token',
          data: requestBody,
          options: Options(contentType: Headers.formUrlEncodedContentType),
        );

        if (response.statusCode == HttpStatus.ok) {
          int _expiresIn = response.data['expires_in'];
          DateTime _updatedExpiryAt =
              DateTimeUtil.addTimeToCurrentTime(_expiresIn ~/ 60);
          _tokenManager.setExpiryTime(_updatedExpiryAt);
          _tokenManager.setAccessTokens(response.data['access_token']);
          _tokenManager.setRefreshToken(response.data['refresh_token']);
        }
      } on DioError catch (e) {
        toastBottom(AppConstants.sessionExpiredWarningMessage);
        login();
      }
    }
  }

  static bool isTokenExpired() {
    TokenManager _tokenManager = Get.find<TokenManager>();
    String? expiryTime = _tokenManager.getExpiryTime();
    return DateTimeUtil.isTimeExpired(expiryTime.toString());
  }

  static Future<bool> login() async {
    try {
      UserManager _userManager = Get.find<UserManager>();
      TokenManager _tokenManager = Get.find<TokenManager>();
      _tokenManager.removeTokens();

      Credential credential = await KeyCloakAuthService.authenticate();
      TokenResponse tokenResponse = await credential.getTokenResponse();

      if (!tokenResponse.isBlank!) {
        UserInfo userInfo = await credential.getUserInfo();

        _tokenManager.setAccessTokens(tokenResponse.accessToken!);
        _tokenManager.setRefreshToken(tokenResponse.refreshToken!);
        _tokenManager.setIdToken(tokenResponse['id_token']);
        _tokenManager.setExpiryTime(tokenResponse.expiresAt!);
        _userManager.setUserName(userInfo.email!);
        _tokenManager.setEmailVerification(userInfo.emailVerified!);

        var apiResponse = await CustomerService().getCustomerByEmail(userInfo.email!);

        if(apiResponse.status){
          await _userManager.setUserData(apiResponse.data);
        }else{
          var user = UserModel(firstName: userInfo.givenName!, lastName: userInfo.familyName!,email: userInfo.email!);
          await _userManager.setUserData(user);
        }

        toastBottom(AppConstants.loginSuccessMessage);

        return true;
      }
      throw Exception(AppConstants.keycloakErrorMessage);
    } on Exception catch (e) {
      toastBottom(AppConstants.applicationErrorMessage);
      return false;
    }
  }

  static Future<bool> logOut(BuildContext buildContext) async {

    var uri = Uri.https("auth2.gangfy.com", "/auth/realms/gangfy"); // auth2
    var issuer = await Issuer.discover(uri);
    var client = Client(issuer, "gangfy_booking");

    TokenManager _tokenManager = Get.find<TokenManager>();

    Credential credential = client.createCredential(
      tokenType: 'Bearer',
      refreshToken: _tokenManager.getRefreshToken(),
      idToken: _tokenManager.getIdToken(),
    );

    Uri? logOutUri = credential.generateLogoutUrl();

    urlLauncher(String url) async {
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url),
            webViewConfiguration:
            const WebViewConfiguration(enableJavaScript: true));
      } else {
        throw 'Could not launch $url';
      }
    }

    _tokenManager.removeTokens();

    urlLauncher.call(logOutUri.toString());
    AutoRouter.of(buildContext).popUntilRoot();
    login();

    return true;
  }

}
