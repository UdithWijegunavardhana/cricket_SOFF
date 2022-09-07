import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/views/app/home_base_controller.dart';

class HomeBase extends StatefulWidget {
  const HomeBase({Key? key}) : super(key: key);

  @override
  State<HomeBase> createState() => _HomeBaseState();
}

class _HomeBaseState extends State<HomeBase> {

  final _homeBaseController = Get.put(HomeBaseController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Obx(
          ()=> Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.white,
                currentIndex: _homeBaseController.bottomNavBarSelectedItem.value,
                selectedItemColor: Colors.black,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.sticky_note_2),
                    activeIcon: Icon(Icons.sticky_note_2, size: 26,),
                    label: 'Machine Time',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.qr_code),
                    activeIcon: Icon(Icons.qr_code, size: 26,),
                    label: 'QR Code',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    activeIcon: Icon(Icons.person, size: 26,),
                    label: 'Profile',
                  ),
                ],
                onTap: (index) {
                  _homeBaseController.onNavigation(context, index);
                },
              ),
              drawer: Drawer(
                child: Column(
                  children: <Widget>[
                    ElevatedButton(onPressed: () {}, child: Text("LOGOUT"))
                  ],
                ),
              ),
              body: const AutoRouter()),
        )
    );
  }
}
