import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:soff_cricket_hybrid/routes/app_router.gr.dart';
import 'package:soff_cricket_hybrid/views/_shared/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kLayoutLightColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  icon: const Icon(Icons.settings, size: 28,),
                  tooltip: 'Show Settings',
                  onPressed: () {
                    AutoRouter.of(context).push(const SettingRoute());
                  },
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 200.0),
            child: Text("Home Screen"),
          )
        ],
      ),
    );
  }
}
