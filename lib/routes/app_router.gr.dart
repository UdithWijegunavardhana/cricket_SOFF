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

import '../views/app/home_base.dart' as _i1;
import '../views/app/qr_code/qr_code_screen.dart' as _i2;
import 'guards/auth_guard.dart' as _i5;

class AppRouter extends _i3.RootStackRouter {
  AppRouter(
      {_i4.GlobalKey<_i4.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i5.AuthGuard authGuard;

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeBase.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeBase());
    },
    QRCodeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.QRCodeScreen());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: '/home', fullMatch: true),
        _i3.RouteConfig(HomeBase.name, path: '/home', guards: [
          authGuard
        ], children: [
          _i3.RouteConfig(QRCodeRoute.name,
              path: 'qr-code', parent: HomeBase.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomeBase]
class HomeBase extends _i3.PageRouteInfo<void> {
  const HomeBase({List<_i3.PageRouteInfo>? children})
      : super(HomeBase.name, path: '/home', initialChildren: children);

  static const String name = 'HomeBase';
}

/// generated route for
/// [_i2.QRCodeScreen]
class QRCodeRoute extends _i3.PageRouteInfo<void> {
  const QRCodeRoute() : super(QRCodeRoute.name, path: 'qr-code');

  static const String name = 'QRCodeRoute';
}
