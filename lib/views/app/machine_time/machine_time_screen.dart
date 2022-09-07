import 'package:flutter/material.dart';

class MachineTimeScreen extends StatelessWidget {
  const MachineTimeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: const Center(
        child: Text(
          "Machine Time",
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
