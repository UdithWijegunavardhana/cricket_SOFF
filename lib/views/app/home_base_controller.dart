import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/routes/app_router.gr.dart';

class HomeBaseController extends GetxController {

  RxInt bottomNavBarSelectedItem = RxInt(1);

  onNavigation(BuildContext context, int index) {
    switch (index) {
      case 0:
        AutoRouter.of(context).replace(const HomeRoute());
        bottomNavBarSelectedItem.value = 0;
        break;
      case 1:
        AutoRouter.of(context).replace(const QRCodeRoute());
        bottomNavBarSelectedItem.value = 1;
        break;
      case 2:
        AutoRouter.of(context).replace(const RecordsRoute());
        bottomNavBarSelectedItem.value = 2;
        break;
      case 3:
        AutoRouter.of(context).replace(const ProfileRoute());
        bottomNavBarSelectedItem.value = 3;
        break;
      default:
        AutoRouter.of(context).replace(const QRCodeRoute());
        bottomNavBarSelectedItem.value = 1;
    }
  }

}