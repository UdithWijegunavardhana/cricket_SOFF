import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/models/user/user_model.dart';
import 'package:soff_cricket_hybrid/services/auth/keycloak_auth_service.dart';
import 'package:soff_cricket_hybrid/services/customer_service.dart';

import '../../../services/auth/user_manager_service.dart';

class SettingScreenController extends GetxController {
  RxBool deleteKeyCloackAcc = true.obs;
  RxBool isLoading = false.obs;

  void onDeleteKeycloakAccChanged(bool? val) => deleteKeyCloackAcc(val ?? true);

  Future<void> onDeleteAcc(BuildContext context) async {
    UserManager _userManager = Get.find<UserManager>();
    UserModel user = await _userManager.getUserData();
    isLoading(true);
    CustomerService()
        .deleteUserAccount(user.id)
        .then((value) => {
              if (value.status) {KeyCloakAuthService.logOut(context)}
            })
        .whenComplete(() {
      isLoading(false);
      Navigator.pop(context);
    });
  }
}
