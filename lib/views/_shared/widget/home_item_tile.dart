import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:soff_cricket_hybrid/views/_shared/constants/colors.dart';

import '../../../routes/app_router.gr.dart';

class HomeItemTile extends StatelessWidget {
  final String title;
  final String? subTitle;
  final VoidCallback onTap;

  const HomeItemTile({Key? key, required this.title, this.subTitle, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: kLayoutLightColor, fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              subTitle ?? '',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: kLayoutLightColor),
            ),
          ],
        ),
        decoration: BoxDecoration(color: kPrimaryColor, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
