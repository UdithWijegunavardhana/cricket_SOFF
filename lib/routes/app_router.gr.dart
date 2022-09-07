// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../views/app/home_base.dart' as _i1;
import '../views/app/machine_time/machine_time_screen.dart' as _i3;
import '../views/app/profile/profile_screen.dart' as _i4;
import '../views/app/qr_code/qr_code_screen.dart' as _i2;
import 'guards/auth_guard.dart' as _i7;

class AppRouter extends _i5.RootStackRouter {
  AppRouter(
      {_i6.GlobalKey<_i6.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i7.AuthGuard authGuard;

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeBase.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeBase());
    },
    QRCodeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.QRCodeScreen());
    },
    MachineTimeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.MachineTimeScreen());
    },
    ProfileRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ProfileScreen());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig('/#redirect',
            path: '/', redirectTo: '/home', fullMatch: true),
        _i5.RouteConfig(HomeBase.name, path: '/home', guards: [
          authGuard
        ], children: [
          _i5.RouteConfig('#redirect',
              path: '',
              parent: HomeBase.name,
              redirectTo: 'qr-code',
              fullMatch: true),
          _i5.RouteConfig(QRCodeRoute.name,
              path: 'qr-code', parent: HomeBase.name),
          _i5.RouteConfig(MachineTimeRoute.name,
              path: 'machine-time', parent: HomeBase.name),
          _i5.RouteConfig(ProfileRoute.name,
              path: 'profile', parent: HomeBase.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomeBase]
class HomeBase extends _i5.PageRouteInfo<void> {
  const HomeBase({List<_i5.PageRouteInfo>? children})
      : super(HomeBase.name, path: '/home', initialChildren: children);

  static const String name = 'HomeBase';
}

/// generated route for
/// [_i2.QRCodeScreen]
class QRCodeRoute extends _i5.PageRouteInfo<void> {
  const QRCodeRoute() : super(QRCodeRoute.name, path: 'qr-code');

  static const String name = 'QRCodeRoute';
}

/// generated route for
/// [_i3.MachineTimeScreen]
class MachineTimeRoute extends _i5.PageRouteInfo<void> {
  const MachineTimeRoute() : super(MachineTimeRoute.name, path: 'machine-time');

  static const String name = 'MachineTimeRoute';
}

/// generated route for
/// [_i4.ProfileScreen]
class ProfileRoute extends _i5.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile');

  static const String name = 'ProfileRoute';
}
