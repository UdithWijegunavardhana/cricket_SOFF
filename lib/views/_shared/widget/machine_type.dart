import 'package:flutter/material.dart';

Widget machineType(String machineType) {

  Color chipColor = Colors.grey;

  switch(machineType) {
    case 'OPLL': {
      chipColor = Colors.red;
    }
    break;
    case 'BMJ': {
      chipColor = Colors.blue;
    }
    break;
  }

  return Container(
    padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
    child: Text(
      machineType,
      style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500
      ),
    ),
    decoration: BoxDecoration(
      color: chipColor,
      borderRadius: BorderRadius.circular(20),
    ),
  );
}