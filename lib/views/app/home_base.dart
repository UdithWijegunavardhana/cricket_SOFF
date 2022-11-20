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
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                currentIndex: _homeBaseController.bottomNavBarSelectedItem.value,
                elevation: 10,
                selectedItemColor: Colors.black,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.bookmark_add_outlined, size: 28,),
                    activeIcon: Icon(Icons.bookmark_add, size: 28,),
                    label: 'Bookings',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.qr_code_outlined, size: 28,),
                    activeIcon: Icon(Icons.qr_code, size: 28,),
                    label: 'QR Code',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.sticky_note_2_outlined, size: 28,),
                    activeIcon: Icon(Icons.sticky_note_2, size: 28,),
                    label: 'Records',
                  ),
                  // BottomNavigationBarItem(
                  //   icon: Icon(Icons.person_outline, size: 28,),
                  //   activeIcon: Icon(Icons.person, size: 28,),
                  //   label: 'Profile',
                  // ),
                ],
                onTap: (index) {
                  _homeBaseController.onNavigation(context, index);
                },
              ),
              body: const AutoRouter()),
        )
    );
  }
}
