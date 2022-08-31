import 'package:flutter/cupertino.dart';
import 'package:openid_client/openid_client_io.dart';
import 'package:url_launcher/url_launcher.dart';

class KeyCloakAuthService {
  // authenticate(Uri uri, String clientId, List<String> scopes) async {
  static Future<UserInfo> authenticate() async {
    var uri = Uri.https("users.gangfy.com", "/auth/realms/gangfy"); // auth2
    var issuer = await Issuer.discover(uri);
    var client = Client(issuer, "gangfy_booking", clientSecret: "1Qaz2Wsx!");
    // var redirectUri = Uri.parse("com.gangfy.poc:/*");

    urlLauncher( String url ) async {
      if (await canLaunch(url)) {
        await launch(url, forceWebView: true,enableJavaScript: true);
      } else {
        throw 'Could not launch $url';
      }
    }

    var authenticator = Authenticator(
      client,
      scopes: ['openid','profile','email','offline_access'],
      port: 4200,
      urlLancher: urlLauncher,
      // redirectUri: redirectUri
    );

    var c = await authenticator.authorize();
    // close the webview when finished
    closeInAppWebView();
    return await c.getUserInfo();
  }
}