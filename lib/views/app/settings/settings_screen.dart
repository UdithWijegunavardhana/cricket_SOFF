import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:soff_cricket_hybrid/services/auth/keycloak_auth_service.dart';
import 'package:soff_cricket_hybrid/views/_shared/constants/colors.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/custom_appbar.dart';
import 'package:soff_cricket_hybrid/views/_shared/widget/setting_list_tile.dart';
import 'package:soff_cricket_hybrid/views/app/settings/settings_screen_controller.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final SettingScreenController _controller = SettingScreenController();

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
                                            'Are you sure you want to sign out ?',
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
                          height: 210,
                          color: kLayoutLightColor,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 10, 10, 10),
                                        child: Text(
                                            'Are you sure you want to delete your account ?',
                                            style: TextStyle(
                                                color: kPrimaryColor,
                                                fontSize: 16))),
                                  ],
                                ),
                                // Obx(() => Row(
                                //       children: [
                                //         Checkbox(value: _controller.deleteKeyCloackAcc.value, onChanged: _controller.onDeleteKeycloakAccChanged),
                                //         Text("Delete My Keycloak account as well", style: TextStyle(color: kPrimaryColor, fontSize: 16))
                                //       ],
                                //     )),
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
}
