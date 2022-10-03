import 'package:flutter/material.dart';

import '../../_shared/constants/colors.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);

  final TextEditingController telephoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: kLayoutLightColor,
        child: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text(
                    'Congratulations !',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),),
                ),
              ],
            ),
            Container(
              child: const Text('To complete your registration please enter your contact number'),
            ),
            Spacer(),
            SizedBox(height: 60,),
            QrImage(
              data: _qrCodeScreenController.username.value,
              version: QrVersions.auto,
              size: 220.0,
            ),
            Spacer(),
          ],
        )
    )
  }
}
