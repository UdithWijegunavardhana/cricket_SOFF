import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Settings', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            // AutoRouter.of(context).navigateBack();
            context.navigateBack();
            print(AutoRouter.of(context).current.name);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: const Center(
          child: Text("Settings Page")
      ),
    );
  }
}
