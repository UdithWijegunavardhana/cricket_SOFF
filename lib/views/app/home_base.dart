import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomeBase extends StatefulWidget {
  const HomeBase({Key? key}) : super(key: key);

  @override
  State<HomeBase> createState() => _HomeBaseState();
}

class _HomeBaseState extends State<HomeBase> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: Drawer(
              child: Column(
                children: <Widget>[
                  ElevatedButton(onPressed: () {}, child: Text("LOGOUT"))
                ],
              ),
            ),
            body: const AutoRouter()));
  }
}
