import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final double? elevation;

  const CustomAppBar({Key? key, this.title, this.elevation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: elevation ?? 1,
      title: Text(
        title ?? '',
        softWrap: true,
        textScaleFactor: 0.9,
        style: const TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      leading: InkWell(
        onTap: () {
          AutoRouter.of(context).pop();
        },
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
