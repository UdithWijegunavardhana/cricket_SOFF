import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:get/get.dart';
import 'package:soff_cricket_hybrid/routes/app_router.gr.dart';
import 'package:soff_cricket_hybrid/services/auth/keycloak_auth_service.dart';
import 'package:soff_cricket_hybrid/views/_shared/constants/colors.dart';
import 'package:soff_cricket_hybrid/views/app/qr_code/qr_code_screen_controller.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodeScreen extends StatefulWidget {
  const QRCodeScreen({Key? key}) : super(key: key);

  @override
  State<QRCodeScreen> createState() => _QRCodeScreenState();
}

class _QRCodeScreenState extends State<QRCodeScreen> {

  late final QRCodeScreenController _qrCodeScreenController;

  @override
  void initState() {
    _qrCodeScreenController = Get.put(QRCodeScreenController());
    super.initState();
  }

  @override
  void dispose() {
    Get.delete<QRCodeScreenController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Container(
          color: kLayoutLightColor,
          child: Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Text(
                      'Scan QR Code',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),),
                  ),
                ],
              ),
              Spacer(),
              Text(
                _qrCodeScreenController.username.value,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 60,),
              QrImage(
                data: _qrCodeScreenController.username.value,
                version: QrVersions.auto,
                size: 220.0,
              ),
              Spacer(),
            ],
          )
      ),
    );
  }
}
