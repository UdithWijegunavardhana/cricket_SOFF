import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/models/user/user_model.dart';
import 'package:soff_cricket_hybrid/routes/app_router.gr.dart';
import 'package:soff_cricket_hybrid/services/auth/keycloak_auth_service.dart';
import 'package:soff_cricket_hybrid/services/customer_service.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

import '../../../services/auth/user_manager_service.dart';

class SettingScreenController extends GetxController {
  RxBool deleteKeyCloackAcc = false.obs;
  RxBool isLoading = false.obs;

  void onDeleteKeycloakAccChanged(bool? val) => deleteKeyCloackAcc(val ?? true);

  Future<void> onDeleteAcc(BuildContext context) async {
    UserManager _userManager = Get.find<UserManager>();
    UserModel user = await _userManager.getUserData();
    isLoading(true);
    CustomerService()
        .deleteUserAccount(user.id, isHardDeleted: deleteKeyCloackAcc.value)
        .then((value) async => {
              if (value.status)
                {
                  await KeyCloakAuthService.logOut(context),
                  AutoRouter.of(context).popAndPush(const SplashRoute())
                }
            })
        .whenComplete(() {
      isLoading(false);
    });
  }

  Future<CroppedFile?> uploadImageFromGallery(Function callback) async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        compressFormat: ImageCompressFormat.jpg,
        compressQuality: 100,
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Cropper',
              toolbarColor: const Color.fromARGB(255, 25, 24, 24),
              toolbarWidgetColor: Colors.white,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          IOSUiSettings(
            title: 'Cropper',
          ),
        ],
      );
      if (croppedFile != null) {
        callback(croppedFile);
      }
    }
    return null;
  }

  Future<CroppedFile?> uploadImageFromCamera(Function callback) async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        compressFormat: ImageCompressFormat.jpg,
        compressQuality: 100,
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Cropper',
              toolbarColor: const Color.fromARGB(255, 25, 24, 24),
              toolbarWidgetColor: Colors.white,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          IOSUiSettings(
            title: 'Cropper',
          ),
        ],
      );
      if (croppedFile != null) {
        callback(croppedFile);
      }
    }
    return null;
  }
}
