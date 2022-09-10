// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../views/app/home/home_screen.dart' as _i3;
import '../views/app/home_base.dart' as _i1;
import '../views/app/machine_hours/machine_hours_screen.dart' as _i4;
import '../views/app/profile/profile_screen.dart' as _i5;
import '../views/app/qr_code/qr_code_screen.dart' as _i2;
import '../views/app/settings/settings_screen.dart' as _i6;
import 'guards/auth_guard.dart' as _i9;

class AppRouter extends _i7.RootStackRouter {
  AppRouter(
      {_i8.GlobalKey<_i8.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i9.AuthGuard authGuard;

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeBase.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeBase());
    },
    QRCodeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.QRCodeScreen());
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomeScreen());
    },
    MachineHoursRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.MachineHoursScreen());
    },
    ProfileRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ProfileScreen());
    },
    SettingRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SettingScreen());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig('/#redirect',
            path: '/', redirectTo: '/home-base', fullMatch: true),
        _i7.RouteConfig(HomeBase.name, path: '/home-base', guards: [
          authGuard
        ], children: [
          _i7.RouteConfig('#redirect',
              path: '',
              parent: HomeBase.name,
              redirectTo: 'qr-code',
              fullMatch: true),
          _i7.RouteConfig(QRCodeRoute.name,
              path: 'qr-code', parent: HomeBase.name),
          _i7.RouteConfig(HomeRoute.name, path: 'home', parent: HomeBase.name),
          _i7.RouteConfig(MachineHoursRoute.name,
              path: 'machine-time', parent: HomeBase.name),
          _i7.RouteConfig(ProfileRoute.name,
              path: 'profile', parent: HomeBase.name),
          _i7.RouteConfig(SettingRoute.name,
              path: 'setting', parent: HomeBase.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomeBase]
class HomeBase extends _i7.PageRouteInfo<void> {
  const HomeBase({List<_i7.PageRouteInfo>? children})
      : super(HomeBase.name, path: '/home-base', initialChildren: children);

  static const String name = 'HomeBase';
}

/// generated route for
/// [_i2.QRCodeScreen]
class QRCodeRoute extends _i7.PageRouteInfo<void> {
  const QRCodeRoute() : super(QRCodeRoute.name, path: 'qr-code');

  static const String name = 'QRCodeRoute';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.MachineHoursScreen]
class MachineHoursRoute extends _i7.PageRouteInfo<void> {
  const MachineHoursRoute()
      : super(MachineHoursRoute.name, path: 'machine-time');

  static const String name = 'MachineHoursRoute';
}

/// generated route for
/// [_i5.ProfileScreen]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i6.SettingScreen]
class SettingRoute extends _i7.PageRouteInfo<void> {
  const SettingRoute() : super(SettingRoute.name, path: 'setting');

  static const String name = 'SettingRoute';
}
