import 'package:auto_route/annotations.dart';
import 'package:soff_cricket_hybrid/routes/guards/auth_guard.dart';
import 'package:soff_cricket_hybrid/views/app/home_base.dart';
import 'package:soff_cricket_hybrid/views/app/qr_code/qr_code_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeBase, path: '/home', initial: true, guards: [AuthGuard],
    children: [
      AutoRoute(page: QRCodeScreen, path: 'qr-code'),
    ])
  ],
)
class $AppRouter {}