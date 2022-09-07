import 'package:get_storage/get_storage.dart';
import 'package:soff_cricket_hybrid/services/base_service.dart';

class TokenManager extends BaseService {
  Future<bool> setAccessTokens(String loginAuthToken) async {
    GetStorage box = GetStorage();
    await box.write(
        TokenMangerKeys.ACCESS_TOKEN.toString(), loginAuthToken);
    return true;
  }

  Future<bool> setRefreshToken(String refreshToken) async {
    GetStorage box = GetStorage();
    await box.write(
        TokenMangerKeys.REFRESH_TOKEN.toString(), refreshToken);
    return true;
  }

  Future<bool> setExpiryTime(DateTime expiryTime) async {

    GetStorage box = GetStorage();
    await box.write(
        TokenMangerKeys.EXPIRY_TIME.toString(), expiryTime.toIso8601String());

    return true;
  }

  String? getAccessToken() {
    GetStorage box = GetStorage();
    return box.read(TokenMangerKeys.ACCESS_TOKEN.toString());
  }

  String? getRefreshToken() {
    GetStorage box = GetStorage();
    return box.read(TokenMangerKeys.REFRESH_TOKEN.toString());
  }

  String? getExpiryTime() {
    GetStorage box = GetStorage();
    return box.read(TokenMangerKeys.EXPIRY_TIME.toString());
  }

  Future<void> removeTokens() async {
    GetStorage box = GetStorage();
    // await box.remove(TokenMangerKeys.ACCESS_TOKEN.toString());
    await box.erase();
  }

}

enum TokenMangerKeys { ACCESS_TOKEN, REFRESH_TOKEN, EXPIRY_TIME }