import 'package:get_storage/get_storage.dart';

class UserManager {

  Future<bool> setUserName(String username) async {
    GetStorage box = GetStorage();
    await box.write(
        UserMangerKeys.userName.toString(), username);
    return true;
  }

  String? getUserName() {
    GetStorage box = GetStorage();
    return box.read(UserMangerKeys.userName.toString());
  }

}

enum UserMangerKeys { userName }