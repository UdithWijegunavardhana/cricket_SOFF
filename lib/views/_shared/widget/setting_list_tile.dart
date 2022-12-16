import 'package:flutter/material.dart';

class SettingListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTap;
  final Color? txtColor;

  const SettingListTile({Key? key, required this.iconData, required this.title, required this.onTap, this.txtColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Row(
          children: [
            Icon(iconData, color: txtColor),
            Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: txtColor),
                ))
          ],
        ),
      ),
    );
  }
}
