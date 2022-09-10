import 'package:flutter/material.dart';
import 'package:soff_cricket_hybrid/views/_shared/constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kLayoutLightColor,
      child: const Center(
        child: Text(
          "Profile",
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
    );
  }
}
