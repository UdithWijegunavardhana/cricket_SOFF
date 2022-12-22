import 'package:get_storage/get_storage.dart';
import 'package:soff_cricket_hybrid/services/base_service.dart';

class TokenManager extends BaseService {
  Future<bool> setAccessTokens(String loginAuthToken) async {
    GetStorage box = GetStorage();
    await box.write(
        TokenMangerKeys.accessToken.toString(), loginAuthToken);
    return true;
  }

  Future<bool> setRefreshToken(String refreshToken) async {
    GetStorage box = GetStorage();
    await box.write(
        TokenMangerKeys.refreshToken.toString(), refreshToken);
    return true;
  }

  Future<bool> setIdToken(String idToken) async {
    GetStorage box = GetStorage();
    await box.write(
        TokenMangerKeys.idToken.toString(), idToken);
    return true;
  }

  Future<bool> setExpiryTime(DateTime expiryTime) async {

    GetStorage box = GetStorage();
    await box.write(
        TokenMangerKeys.expiryTime.toString(), expiryTime.toIso8601String());

    return true;
  }

  Future<bool> setEmailVerification(bool expiryTime) async {

    GetStorage box = GetStorage();
    await box.write(
        TokenMangerKeys.emailVerified.toString(), expiryTime.toString());

    return true;
  }

  String? getAccessToken() {
    GetStorage box = GetStorage();
    return box.read(TokenMangerKeys.accessToken.toString());
  }

  String? getRefreshToken() {
    GetStorage box = GetStorage();
    return box.read(TokenMangerKeys.refreshToken.toString());
  }

  String? getIdToken() {
    GetStorage box = GetStorage();
    return box.read(TokenMangerKeys.idToken.toString());
  }

  String? getExpiryTime() {
    GetStorage box = GetStorage();
    return box.read(TokenMangerKeys.expiryTime.toString());
  }

  String? getEmailVerified() {
    GetStorage box = GetStorage();
    return box.read(TokenMangerKeys.emailVerified.toString());
  }

  Future<void> removeTokens() async {
    GetStorage box = GetStorage();
    // await box.remove(TokenMangerKeys.ACCESS_TOKEN.toString());
    await box.erase();
  }

}

enum TokenMangerKeys { accessToken, refreshToken, expiryTime, emailVerified, idToken }