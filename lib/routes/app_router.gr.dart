// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../views/app/bookings/booking_screen.dart' as _i3;
import '../views/app/bookings/create_booking_overlay.dart' as _i4;
import '../views/app/home/home_screen.dart' as _i8;
import '../views/app/home_base.dart' as _i6;
import '../views/app/profile/complete_profile_screen.dart' as _i5;
import '../views/app/profile/profile_screen.dart' as _i10;
import '../views/app/qr_code/qr_code_screen.dart' as _i7;
import '../views/app/records/records_screen.dart' as _i9;
import '../views/app/settings/settings_screen.dart' as _i1;
import '../views/app/splash/splash_screen.dart' as _i2;
import 'guards/auth_guard.dart' as _i13;

class AppRouter extends _i11.RootStackRouter {
  AppRouter({
    _i12.GlobalKey<_i12.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i13.AuthGuard authGuard;

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SettingRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.SettingScreen(),
        transitionsBuilder: _i11.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SplashRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.SplashScreen(),
        transitionsBuilder: _i11.TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BookingRoute.name: (routeData) {
      final args = routeData.argsAs<BookingRouteArgs>();
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: _i3.BookingScreen(
          key: args.key,
          resourceId: args.resourceId,
          selectedDate: args.selectedDate,
        ),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    CreateBookingRoute.name: (routeData) {
      final args = routeData.argsAs<CreateBookingRouteArgs>();
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: _i4.CreateBookingScreen(
          key: args.key,
          selectedDateTime: args.selectedDateTime,
          resourceId: args.resourceId,
        ),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    CompleteProfileRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.CompleteProfileScreen(),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeBase.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeBase(),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    QRCodeRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.QRCodeScreen(),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i8.HomeScreen(),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RecordsRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i9.RecordsScreen(),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProfileRoute.name: (routeData) {
      return _i11.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i10.ProfileScreen(),
        transitionsBuilder: _i11.TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/home-base',
          fullMatch: true,
        ),
        _i11.RouteConfig(
          SettingRoute.name,
          path: 'setting',
        ),
        _i11.RouteConfig(
          SplashRoute.name,
          path: 'splash',
        ),
        _i11.RouteConfig(
          BookingRoute.name,
          path: 'bookings',
        ),
        _i11.RouteConfig(
          CreateBookingRoute.name,
          path: 'create- bookings',
        ),
        _i11.RouteConfig(
          CompleteProfileRoute.name,
          path: 'complete-profile',
        ),
        _i11.RouteConfig(
          HomeBase.name,
          path: '/home-base',
          guards: [authGuard],
          children: [
            _i11.RouteConfig(
              '#redirect',
              path: '',
              parent: HomeBase.name,
              redirectTo: 'qr-code',
              fullMatch: true,
            ),
            _i11.RouteConfig(
              QRCodeRoute.name,
              path: 'qr-code',
              parent: HomeBase.name,
            ),
            _i11.RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: HomeBase.name,
            ),
            _i11.RouteConfig(
              RecordsRoute.name,
              path: 'records',
              parent: HomeBase.name,
            ),
            _i11.RouteConfig(
              ProfileRoute.name,
              path: 'profile',
              parent: HomeBase.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SettingScreen]
class SettingRoute extends _i11.PageRouteInfo<void> {
  const SettingRoute()
      : super(
          SettingRoute.name,
          path: 'setting',
        );

  static const String name = 'SettingRoute';
}

/// generated route for
/// [_i2.SplashScreen]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: 'splash',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i3.BookingScreen]
class BookingRoute extends _i11.PageRouteInfo<BookingRouteArgs> {
  BookingRoute({
    _i12.Key? key,
    required String resourceId,
    required DateTime selectedDate,
  }) : super(
          BookingRoute.name,
          path: 'bookings',
          args: BookingRouteArgs(
            key: key,
            resourceId: resourceId,
            selectedDate: selectedDate,
          ),
        );

  static const String name = 'BookingRoute';
}

class BookingRouteArgs {
  const BookingRouteArgs({
    this.key,
    required this.resourceId,
    required this.selectedDate,
  });

  final _i12.Key? key;

  final String resourceId;

  final DateTime selectedDate;

  @override
  String toString() {
    return 'BookingRouteArgs{key: $key, resourceId: $resourceId, selectedDate: $selectedDate}';
  }
}

/// generated route for
/// [_i4.CreateBookingScreen]
class CreateBookingRoute extends _i11.PageRouteInfo<CreateBookingRouteArgs> {
  CreateBookingRoute({
    _i12.Key? key,
    required DateTime selectedDateTime,
    required String resourceId,
  }) : super(
          CreateBookingRoute.name,
          path: 'create- bookings',
          args: CreateBookingRouteArgs(
            key: key,
            selectedDateTime: selectedDateTime,
            resourceId: resourceId,
          ),
        );

  static const String name = 'CreateBookingRoute';
}

class CreateBookingRouteArgs {
  const CreateBookingRouteArgs({
    this.key,
    required this.selectedDateTime,
    required this.resourceId,
  });

  final _i12.Key? key;

  final DateTime selectedDateTime;

  final String resourceId;

  @override
  String toString() {
    return 'CreateBookingRouteArgs{key: $key, selectedDateTime: $selectedDateTime, resourceId: $resourceId}';
  }
}

/// generated route for
/// [_i5.CompleteProfileScreen]
class CompleteProfileRoute extends _i11.PageRouteInfo<void> {
  const CompleteProfileRoute()
      : super(
          CompleteProfileRoute.name,
          path: 'complete-profile',
        );

  static const String name = 'CompleteProfileRoute';
}

/// generated route for
/// [_i6.HomeBase]
class HomeBase extends _i11.PageRouteInfo<void> {
  const HomeBase({List<_i11.PageRouteInfo>? children})
      : super(
          HomeBase.name,
          path: '/home-base',
          initialChildren: children,
        );

  static const String name = 'HomeBase';
}

/// generated route for
/// [_i7.QRCodeScreen]
class QRCodeRoute extends _i11.PageRouteInfo<void> {
  const QRCodeRoute()
      : super(
          QRCodeRoute.name,
          path: 'qr-code',
        );

  static const String name = 'QRCodeRoute';
}

/// generated route for
/// [_i8.HomeScreen]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i9.RecordsScreen]
class RecordsRoute extends _i11.PageRouteInfo<void> {
  const RecordsRoute()
      : super(
          RecordsRoute.name,
          path: 'records',
        );

  static const String name = 'RecordsRoute';
}

/// generated route for
/// [_i10.ProfileScreen]
class ProfileRoute extends _i11.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileRoute';
}
