import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:soff_cricket_hybrid/models/user/user_model.dart';

class UserManager extends FullLifeCycleController {

  var user = Rx<UserModel>(const UserModel());

  Future<bool> setUserName(String username) async {
    GetStorage box = GetStorage();
    await box.write(
        UserMangerKeys.userName.toString(), username);
    return true;
  }

  Future<bool> setUserData(UserModel user) async {
    GetStorage box = GetStorage();
    this.user.value = user;
    await box.write(
        UserMangerKeys.user.toString(), user);
    return true;
  }

  String? getUserName() {
    GetStorage box = GetStorage();
    return box.read(UserMangerKeys.userName.toString());
  }

  UserModel getUserData() {
    GetStorage box = GetStorage();
    var encoded = jsonEncode(box.read(UserMangerKeys.user.toString()));
    var decoded = jsonDecode(encoded);

    return UserModel.fromJson(decoded);
  }

}

enum UserMangerKeys { userName, user }