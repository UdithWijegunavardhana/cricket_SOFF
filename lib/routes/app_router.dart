import 'package:auto_route/annotations.dart';
import 'package:soff_cricket_hybrid/routes/guards/auth_guard.dart';
import 'package:soff_cricket_hybrid/views/app/home/home_screen.dart';
import 'package:soff_cricket_hybrid/views/app/home_base.dart';
import 'package:soff_cricket_hybrid/views/app/machine_hours/machine_hours_screen.dart';
import 'package:soff_cricket_hybrid/views/app/profile/profile_screen.dart';
import 'package:soff_cricket_hybrid/views/app/qr_code/qr_code_screen.dart';
import 'package:soff_cricket_hybrid/views/app/settings/settings_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeBase, path: '/home-base', initial: true, guards: [
      AuthGuard
    ], children: [
      AutoRoute(page: QRCodeScreen, initial: true, path: 'qr-code'),
      AutoRoute(page: HomeScreen, path: 'home'),
      AutoRoute(page: MachineHoursScreen, path: 'machine-time'),
      AutoRoute(page: ProfileScreen, path: 'profile'),
      AutoRoute(page: SettingScreen, path: 'setting'),
    ])
  ],
)
class $AppRouter {}