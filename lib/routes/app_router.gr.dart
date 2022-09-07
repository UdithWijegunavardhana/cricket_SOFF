// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../views/app/machine_time/machine_time_screen.dart' as _i2;
import '../views/app/qr_code/qr_code_screen.dart' as _i1;
import 'guards/auth_guard.dart' as _i5;

class AppRouter extends _i3.RootStackRouter {
  AppRouter(
      {_i4.GlobalKey<_i4.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i5.AuthGuard authGuard;

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    QRCodeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.QRCodeScreen());
    },
    MachineTimeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.MachineTimeScreen());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: 'qr-code', fullMatch: true),
        _i3.RouteConfig(QRCodeRoute.name, path: 'qr-code', guards: [authGuard]),
        _i3.RouteConfig(MachineTimeRoute.name,
            path: 'machine-time', guards: [authGuard])
      ];
}

/// generated route for
/// [_i1.QRCodeScreen]
class QRCodeRoute extends _i3.PageRouteInfo<void> {
  const QRCodeRoute() : super(QRCodeRoute.name, path: 'qr-code');

  static const String name = 'QRCodeRoute';
}

/// generated route for
/// [_i2.MachineTimeScreen]
class MachineTimeRoute extends _i3.PageRouteInfo<void> {
  const MachineTimeRoute() : super(MachineTimeRoute.name, path: 'machine-time');

  static const String name = 'MachineTimeRoute';
}
