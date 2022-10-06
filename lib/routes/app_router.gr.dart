// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../views/app/home/home_screen.dart' as _i5;
import '../views/app/home_base.dart' as _i3;
import '../views/app/profile/complete_profile_screen.dart' as _i2;
import '../views/app/profile/profile_screen.dart' as _i7;
import '../views/app/qr_code/qr_code_screen.dart' as _i4;
import '../views/app/records/records_screen.dart' as _i6;
import '../views/app/settings/settings_screen.dart' as _i1;
import 'guards/auth_guard.dart' as _i10;

class AppRouter extends _i8.RootStackRouter {
  AppRouter(
      {_i9.GlobalKey<_i9.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i10.AuthGuard authGuard;

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SettingRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SettingScreen(),
          transitionsBuilder: _i8.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    CompleteProfileRoute.name: (routeData) {
      final args = routeData.argsAs<CompleteProfileRouteArgs>(
          orElse: () => const CompleteProfileRouteArgs());
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.CompleteProfileScreen(key: args.key),
          transitionsBuilder: _i8.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    HomeBase.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.HomeBase(),
          transitionsBuilder: _i8.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    QRCodeRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.QRCodeScreen(),
          transitionsBuilder: _i8.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    HomeRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.HomeScreen(),
          transitionsBuilder: _i8.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    RecordsRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.RecordsScreen(),
          transitionsBuilder: _i8.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    ProfileRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.ProfileScreen(),
          transitionsBuilder: _i8.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig('/#redirect',
            path: '/', redirectTo: '/home-base', fullMatch: true),
        _i8.RouteConfig(SettingRoute.name, path: 'setting'),
        _i8.RouteConfig(CompleteProfileRoute.name, path: 'complete-profile'),
        _i8.RouteConfig(HomeBase.name, path: '/home-base', guards: [
          authGuard
        ], children: [
          _i8.RouteConfig('#redirect',
              path: '',
              parent: HomeBase.name,
              redirectTo: 'qr-code',
              fullMatch: true),
          _i8.RouteConfig(QRCodeRoute.name,
              path: 'qr-code', parent: HomeBase.name),
          _i8.RouteConfig(HomeRoute.name, path: 'home', parent: HomeBase.name),
          _i8.RouteConfig(RecordsRoute.name,
              path: 'records', parent: HomeBase.name),
          _i8.RouteConfig(ProfileRoute.name,
              path: 'profile', parent: HomeBase.name)
        ])
      ];
}

/// generated route for
/// [_i1.SettingScreen]
class SettingRoute extends _i8.PageRouteInfo<void> {
  const SettingRoute() : super(SettingRoute.name, path: 'setting');

  static const String name = 'SettingRoute';
}

/// generated route for
/// [_i2.CompleteProfileScreen]
class CompleteProfileRoute extends _i8.PageRouteInfo<CompleteProfileRouteArgs> {
  CompleteProfileRoute({_i9.Key? key})
      : super(CompleteProfileRoute.name,
            path: 'complete-profile', args: CompleteProfileRouteArgs(key: key));

  static const String name = 'CompleteProfileRoute';
}

class CompleteProfileRouteArgs {
  const CompleteProfileRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'CompleteProfileRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.HomeBase]
class HomeBase extends _i8.PageRouteInfo<void> {
  const HomeBase({List<_i8.PageRouteInfo>? children})
      : super(HomeBase.name, path: '/home-base', initialChildren: children);

  static const String name = 'HomeBase';
}

/// generated route for
/// [_i4.QRCodeScreen]
class QRCodeRoute extends _i8.PageRouteInfo<void> {
  const QRCodeRoute() : super(QRCodeRoute.name, path: 'qr-code');

  static const String name = 'QRCodeRoute';
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.RecordsScreen]
class RecordsRoute extends _i8.PageRouteInfo<void> {
  const RecordsRoute() : super(RecordsRoute.name, path: 'records');

  static const String name = 'RecordsRoute';
}

/// generated route for
/// [_i7.ProfileScreen]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile');

  static const String name = 'ProfileRoute';
}
