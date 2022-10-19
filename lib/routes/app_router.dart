import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:soff_cricket_hybrid/routes/guards/auth_guard.dart';
import 'package:soff_cricket_hybrid/views/app/bookings/booking_screen.dart';
import 'package:soff_cricket_hybrid/views/app/home/home_screen.dart';
import 'package:soff_cricket_hybrid/views/app/home_base.dart';
import 'package:soff_cricket_hybrid/views/app/profile/complete_profile_screen.dart';
import 'package:soff_cricket_hybrid/views/app/profile/profile_screen.dart';
import 'package:soff_cricket_hybrid/views/app/qr_code/qr_code_screen.dart';
import 'package:soff_cricket_hybrid/views/app/records/records_screen.dart';
import 'package:soff_cricket_hybrid/views/app/settings/settings_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <CustomRoute>[
    CustomRoute(
      page: SettingScreen,
      path: 'setting',
      transitionsBuilder: TransitionsBuilders.slideLeft,
    ),
    CustomRoute(
        page: BookingScreen,
        path: 'bookings',
        transitionsBuilder: TransitionsBuilders.fadeIn,
        maintainState: true),
    CustomRoute(
        page: CompleteProfileScreen,
        path: 'complete-profile',
        transitionsBuilder: TransitionsBuilders.fadeIn,
        maintainState: true),
    CustomRoute(
        page: HomeBase,
        path: '/home-base',
        initial: true,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        maintainState: true,
        guards: [
          AuthGuard
        ],
        children: [
          CustomRoute(
              page: QRCodeScreen,
              initial: true,
              path: 'qr-code',
              transitionsBuilder: TransitionsBuilders.fadeIn,
              maintainState: true),
          CustomRoute(
            page: HomeScreen,
            path: 'home',
            transitionsBuilder: TransitionsBuilders.fadeIn,
            initial: true,
            maintainState: true,
          ),
          CustomRoute(
              page: RecordsScreen,
              path: 'records',
              transitionsBuilder: TransitionsBuilders.fadeIn,
              maintainState: true),
          CustomRoute(
              page: ProfileScreen,
              path: 'profile',
              transitionsBuilder: TransitionsBuilders.fadeIn,
              maintainState: true)
        ])
  ],
)
class $AppRouter {}
