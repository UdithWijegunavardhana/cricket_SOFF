import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/routes/app_router.gr.dart';
import 'package:soff_cricket_hybrid/views/_shared/constants/colors.dart';

import '../../_shared/loaders/home_loader.dart';
import '../../_shared/widget/home_category_card.dart';
import 'home_controller.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeController _homeController;

  @override
  void initState() {
    _homeController = Get.put(HomeController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: kLayoutLightColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(00.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.settings,
                      size: 28,
                    ),
                    tooltip: 'Show Settings',
                    onPressed: () {
                      AutoRouter.of(context).push(const SettingRoute());
                    },
                  ),
                ],
              ),
            ),
            Obx(
              ()=> _homeController.isLoading.isFalse ? HomeCategoryCard(
                title: 'Categories',
                titleCardItems: _homeController.resourceCategories,
                titleCardCount: _homeController.resourceCategories.length,
              ) : const HomeCardLoader(),
            ),
          ],
        ),
      ),
    );
  }
}
