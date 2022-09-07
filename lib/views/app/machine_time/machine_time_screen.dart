import 'package:flutter/material.dart';

class MachineTimeScreen extends StatelessWidget {
  const MachineTimeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const Text(
        "Machine Time",
        style: TextStyle(
          color: Colors.white
        ),
      ),
    );
  }
}
