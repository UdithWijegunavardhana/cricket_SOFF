import 'package:auto_route/annotations.dart';
import 'package:soff_cricket_hybrid/routes/guards/auth_guard.dart';
import 'package:soff_cricket_hybrid/views/app/machine_time/machine_time_screen.dart';
import 'package:soff_cricket_hybrid/views/app/qr_code/qr_code_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: QRCodeScreen, path: 'qr-code', initial: true, guards: [AuthGuard]),
    AutoRoute(page: MachineTimeScreen, path: 'machine-time', guards: [AuthGuard]),
  ],
)
class $AppRouter {}