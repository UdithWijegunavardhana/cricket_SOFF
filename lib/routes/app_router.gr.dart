// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../views/app/home_base.dart' as _i1;
import '../views/app/machine_time/machine_time_screen.dart' as _i3;
import '../views/app/profile/profile_screen.dart' as _i4;
import '../views/app/qr_code/qr_code_screen.dart' as _i2;
import '../views/app/settings/settings_screen.dart' as _i5;
import 'guards/auth_guard.dart' as _i8;

class AppRouter extends _i6.RootStackRouter {
  AppRouter(
      {_i7.GlobalKey<_i7.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i8.AuthGuard authGuard;

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeBase.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeBase());
    },
    QRCodeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.QRCodeScreen());
    },
    MachineTimeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.MachineTimeScreen());
    },
    ProfileRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ProfileScreen());
    },
    SettingRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SettingScreen());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig('/#redirect',
            path: '/', redirectTo: '/home', fullMatch: true),
        _i6.RouteConfig(HomeBase.name, path: '/home', guards: [
          authGuard
        ], children: [
          _i6.RouteConfig('#redirect',
              path: '',
              parent: HomeBase.name,
              redirectTo: 'qr-code',
              fullMatch: true),
          _i6.RouteConfig(QRCodeRoute.name,
              path: 'qr-code', parent: HomeBase.name),
          _i6.RouteConfig(MachineTimeRoute.name,
              path: 'machine-time', parent: HomeBase.name),
          _i6.RouteConfig(ProfileRoute.name,
              path: 'profile', parent: HomeBase.name),
          _i6.RouteConfig(SettingRoute.name,
              path: 'setting', parent: HomeBase.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomeBase]
class HomeBase extends _i6.PageRouteInfo<void> {
  const HomeBase({List<_i6.PageRouteInfo>? children})
      : super(HomeBase.name, path: '/home', initialChildren: children);

  static const String name = 'HomeBase';
}

/// generated route for
/// [_i2.QRCodeScreen]
class QRCodeRoute extends _i6.PageRouteInfo<void> {
  const QRCodeRoute() : super(QRCodeRoute.name, path: 'qr-code');

  static const String name = 'QRCodeRoute';
}

/// generated route for
/// [_i3.MachineTimeScreen]
class MachineTimeRoute extends _i6.PageRouteInfo<void> {
  const MachineTimeRoute() : super(MachineTimeRoute.name, path: 'machine-time');

  static const String name = 'MachineTimeRoute';
}

/// generated route for
/// [_i4.ProfileScreen]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i5.SettingScreen]
class SettingRoute extends _i6.PageRouteInfo<void> {
  const SettingRoute() : super(SettingRoute.name, path: 'setting');

  static const String name = 'SettingRoute';
}
