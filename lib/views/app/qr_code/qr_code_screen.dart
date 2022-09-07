import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:soff_cricket_hybrid/services/auth/keycloak_auth_service.dart';

class QRCodeScreen extends StatelessWidget {
  const QRCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Qr Code",
          style: TextStyle(
            color: Colors.white
          ),
          ),
          ElevatedButton(onPressed: () async {
            context.router.popUntilRoot();
            KeyCloakAuthService.login();
          },
              child: Text("Log Out"))
        ],
      ),
    );
  }
}
