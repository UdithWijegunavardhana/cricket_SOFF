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

import '../views/app/home/home_screen.dart' as _i4;
import '../views/app/home_base.dart' as _i2;
import '../views/app/profile/profile_screen.dart' as _i6;
import '../views/app/qr_code/qr_code_screen.dart' as _i3;
import '../views/app/records/records_screen.dart' as _i5;
import '../views/app/settings/settings_screen.dart' as _i1;
import 'guards/auth_guard.dart' as _i9;

class AppRouter extends _i7.RootStackRouter {
  AppRouter(
      {_i8.GlobalKey<_i8.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i9.AuthGuard authGuard;

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SettingRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SettingScreen(),
          transitionsBuilder: _i7.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    HomeBase.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.HomeBase(),
          transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    QRCodeRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.QRCodeScreen(),
          transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    HomeRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.HomeScreen(),
          transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    RecordsRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.RecordsScreen(),
          transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    ProfileRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.ProfileScreen(),
          transitionsBuilder: _i7.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig('/#redirect',
            path: '/', redirectTo: '/home-base', fullMatch: true),
        _i7.RouteConfig(SettingRoute.name, path: 'setting'),
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
          _i7.RouteConfig(RecordsRoute.name,
              path: 'records', parent: HomeBase.name),
          _i7.RouteConfig(ProfileRoute.name,
              path: 'profile', parent: HomeBase.name)
        ])
      ];
}

/// generated route for
/// [_i1.SettingScreen]
class SettingRoute extends _i7.PageRouteInfo<void> {
  const SettingRoute() : super(SettingRoute.name, path: 'setting');

  static const String name = 'SettingRoute';
}

/// generated route for
/// [_i2.HomeBase]
class HomeBase extends _i7.PageRouteInfo<void> {
  const HomeBase({List<_i7.PageRouteInfo>? children})
      : super(HomeBase.name, path: '/home-base', initialChildren: children);

  static const String name = 'HomeBase';
}

/// generated route for
/// [_i3.QRCodeScreen]
class QRCodeRoute extends _i7.PageRouteInfo<void> {
  const QRCodeRoute() : super(QRCodeRoute.name, path: 'qr-code');

  static const String name = 'QRCodeRoute';
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.RecordsScreen]
class RecordsRoute extends _i7.PageRouteInfo<void> {
  const RecordsRoute() : super(RecordsRoute.name, path: 'records');

  static const String name = 'RecordsRoute';
}

/// generated route for
/// [_i6.ProfileScreen]
class ProfileRoute extends _i7.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile');

  static const String name = 'ProfileRoute';
}
