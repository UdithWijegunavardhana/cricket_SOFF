import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:soff_cricket_hybrid/routes/app_router.gr.dart';
import 'package:soff_cricket_hybrid/services/auth/keycloak_auth_service.dart';

class QRCodeScreen extends StatelessWidget {
  const QRCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
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
