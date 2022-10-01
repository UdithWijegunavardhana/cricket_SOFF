import 'package:flutter/material.dart';

class UnderDevelopmentScreen extends StatelessWidget {
  const UnderDevelopmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.construction, size: 30,),
          SizedBox(height: 24,),
          Text(
              'Section Under Development',
            style: TextStyle(
              fontSize: 25
            ),
          )
        ],
      ),
    );
  }
}
