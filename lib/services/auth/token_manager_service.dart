import 'package:get_storage/get_storage.dart';
import 'package:soff_cricket_hybrid/models/user/users_and_auth_model.dart';
import 'package:soff_cricket_hybrid/services/base_service.dart';

class TokenManager extends BaseService {
  Future<bool> saveTokens(LoginAuthToken loginAuthToken) async {
    GetStorage box = GetStorage();
    await box.write(
        TokenMangerKeys.ACCESS_TOKEN.toString(), loginAuthToken.token);
    return true;
  }

  String? getAccessToken() {
    GetStorage box = GetStorage();
    return box.read(TokenMangerKeys.ACCESS_TOKEN.toString());
  }

  Future<void> removeTokens() async {
    GetStorage box = GetStorage();
    await box.remove(TokenMangerKeys.ACCESS_TOKEN.toString());
  }
}

enum TokenMangerKeys { ACCESS_TOKEN }