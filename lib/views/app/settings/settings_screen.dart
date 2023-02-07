import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:soff_cricket_hybrid/services/auth/keycloak_auth_service.dart';
import 'package:soff_cricket_hybrid/views/_shared/constants/colors.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/custom_appbar.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/setting_list_tile.dart';
import 'package:soff_cricket_hybrid/views/app/settings/settings_screen_controller.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final SettingScreenController _controller = SettingScreenController();
  ImagePicker picker = ImagePicker();
  XFile? image;
  CroppedFile? _croppedFile;
  dynamic pickImageError;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: const CustomAppBar(
            title: 'Options',
          ),
          body: Column(
            children: [
              const SizedBox(height: 20),
              Center(
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: const Color.fromARGB(255, 3, 3, 3),
                          width: 5.0,
                          style: BorderStyle.solid),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: _croppedFile != null
                            ? FileImage(File(_croppedFile!.path))
                            : const AssetImage(
                                    'assets/images/profile/profile.jpg')
                                as ImageProvider,
                      ),
                    ),
                    height: 180,
                    width: 200,
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: InkWell(
                      onTap: () async {
                        try {
                          // final pickedImage = await picker.pickImage(
                          //     source: ImageSource.gallery);
                          // setState(() {
                          //   image = pickedImage;
                          // });
                          _uploadImage();
                        } catch (e) {
                          setState(() {
                            pickImageError = e;
                          });
                        }
                      },
                      child: profilePicEditIcon(),
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 20),
              SettingListTile(
                  iconData: Icons.exit_to_app,
                  title: 'Sign Out',
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 210,
                          color: kLayoutLightColor,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 10, 10, 10),
                                        child: Text(
                                            'Are you sure you want to sign out?',
                                            style: TextStyle(
                                                color: kPrimaryColor,
                                                fontSize: 16))),
                                  ],
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 60,
                                  margin:
                                      const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                  child: ElevatedButton(
                                    child: Text(
                                      'Sign Out',
                                      style: TextStyle(
                                          color: kLayoutLightColor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    onPressed: () {
                                      KeyCloakAuthService.logOut(context);
                                    },
                                    style: ButtonStyle(
                                      elevation:
                                          MaterialStateProperty.all<double>(0),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              kPrimaryColor),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0))),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 60,
                                  margin:
                                      const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: ElevatedButton(
                                    child: Text(
                                      'Cancel',
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    onPressed: () => Navigator.pop(context),
                                    style: ButtonStyle(
                                      elevation:
                                          MaterialStateProperty.all<double>(0),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              kSecondaryDarkColor),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0))),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }),
              SettingListTile(
                  iconData: Icons.info_outline_rounded,
                  title: 'About',
                  onTap: () {
                    print('About');
                  }),
              const Spacer(),
              SettingListTile(
                  txtColor: Colors.red,
                  iconData: Icons.delete_forever_outlined,
                  title: 'Delete Account',
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 380,
                          color: kLayoutLightColor,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const SizedBox(height: 10),
                                Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 10, 10, 10),
                                    child: Text(
                                        'Are you sure you want to delete your account ?',
                                        style: TextStyle(
                                            color: kPrimaryColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold))),
                                Obx(() => Row(
                                      children: [
                                        Checkbox(
                                            value: _controller
                                                .deleteKeyCloackAcc.value,
                                            onChanged: _controller
                                                .onDeleteKeycloakAccChanged),
                                        Expanded(
                                          child: Text(
                                              "Please delete my account in Gangfy Single Sign-on Server too",
                                              style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 16)),
                                        ),
                                      ],
                                    )),
                                const SizedBox(height: 10),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Text(
                                      "I understand that by doing so, I will not be able to log-in to other services associate with Soff Cricket in the future with these login credentials"),
                                ),
                                const SizedBox(height: 30),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    margin: const EdgeInsets.fromLTRB(
                                        10, 20, 10, 20),
                                    child: Obx(
                                      () => ElevatedButton(
                                        child: _controller.isLoading.value
                                            ? const CircularProgressIndicator()
                                            : Text(
                                                'Delete',
                                                style: TextStyle(
                                                    color: kLayoutLightColor,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                        onPressed: () =>
                                            _controller.onDeleteAcc(context),
                                        style: ButtonStyle(
                                          elevation:
                                              MaterialStateProperty.all<double>(
                                                  0),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  kPrimaryColor),
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0))),
                                        ),
                                      ),
                                    )),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 60,
                                  margin:
                                      const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: ElevatedButton(
                                    child: Text(
                                      'Cancel',
                                      style: TextStyle(
                                          color: kPrimaryColor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    onPressed: () => Navigator.pop(context),
                                    style: ButtonStyle(
                                      elevation:
                                          MaterialStateProperty.all<double>(0),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              kSecondaryDarkColor),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0))),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }

  Widget profilePicEditIcon() => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          color: const Color.fromARGB(255, 0, 0, 0),
          all: 8,
          child: const Icon(
            Icons.add_a_photo,
            color: Colors.white,
            size: 20,
          ),
        ),
      );
  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );

  Future<void> _uploadImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    // setState(() {
    //   image = pickedFile;
    // });
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
          WebUiSettings(
            context: context,
            presentStyle: CropperPresentStyle.dialog,
            boundary: const CroppieBoundary(
              width: 520,
              height: 520,
            ),
            viewPort:
                const CroppieViewPort(width: 480, height: 480, type: 'circle'),
            enableExif: true,
            enableZoom: true,
            showZoomer: true,
          ),
        ],
      );
      if (croppedFile != null) {
        setState(() {
          _croppedFile = croppedFile;
        });
      }
    }
  }
}
