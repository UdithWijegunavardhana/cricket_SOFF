// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../views/app/bookings/booking_screen.dart' as _i2;
import '../views/app/bookings/create_booking_overlay.dart' as _i3;
import '../views/app/home/home_screen.dart' as _i7;
import '../views/app/home_base.dart' as _i5;
import '../views/app/profile/complete_profile_screen.dart' as _i4;
import '../views/app/profile/profile_screen.dart' as _i9;
import '../views/app/qr_code/qr_code_screen.dart' as _i6;
import '../views/app/records/records_screen.dart' as _i8;
import '../views/app/settings/settings_screen.dart' as _i1;
import 'guards/auth_guard.dart' as _i12;

class AppRouter extends _i10.RootStackRouter {
  AppRouter(
      {_i11.GlobalKey<_i11.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i12.AuthGuard authGuard;

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SettingRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SettingScreen(),
          transitionsBuilder: _i10.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    BookingRoute.name: (routeData) {
      final args = routeData.argsAs<BookingRouteArgs>();
      return _i10.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.BookingScreen(
              key: args.key,
              resourceId: args.resourceId,
              selectedDate: args.selectedDate),
          transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    CreateBookingRoute.name: (routeData) {
      final args = routeData.argsAs<CreateBookingRouteArgs>();
      return _i10.CustomPage<dynamic>(
          routeData: routeData,
          child: _i3.CreateBookingScreen(
              key: args.key, selectedDateTime: args.selectedDateTime),
          transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    CompleteProfileRoute.name: (routeData) {
      final args = routeData.argsAs<CompleteProfileRouteArgs>(
          orElse: () => const CompleteProfileRouteArgs());
      return _i10.CustomPage<dynamic>(
          routeData: routeData,
          child: _i4.CompleteProfileScreen(key: args.key),
          transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    HomeBase.name: (routeData) {
      return _i10.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.HomeBase(),
          transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    QRCodeRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.QRCodeScreen(),
          transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i10.CustomPage<dynamic>(
          routeData: routeData,
          child: _i7.HomeScreen(key: args.key),
          transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    RecordsRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.RecordsScreen(),
          transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    ProfileRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i9.ProfileScreen(),
          transitionsBuilder: _i10.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig('/#redirect',
            path: '/', redirectTo: '/home-base', fullMatch: true),
        _i10.RouteConfig(SettingRoute.name, path: 'setting'),
        _i10.RouteConfig(BookingRoute.name, path: 'bookings'),
        _i10.RouteConfig(CreateBookingRoute.name, path: 'create- bookings'),
        _i10.RouteConfig(CompleteProfileRoute.name, path: 'complete-profile'),
        _i10.RouteConfig(HomeBase.name, path: '/home-base', guards: [
          authGuard
        ], children: [
          _i10.RouteConfig('#redirect',
              path: '',
              parent: HomeBase.name,
              redirectTo: 'qr-code',
              fullMatch: true),
          _i10.RouteConfig(QRCodeRoute.name,
              path: 'qr-code', parent: HomeBase.name),
          _i10.RouteConfig(HomeRoute.name, path: 'home', parent: HomeBase.name),
          _i10.RouteConfig(RecordsRoute.name,
              path: 'records', parent: HomeBase.name),
          _i10.RouteConfig(ProfileRoute.name,
              path: 'profile', parent: HomeBase.name)
        ])
      ];
}

/// generated route for
/// [_i1.SettingScreen]
class SettingRoute extends _i10.PageRouteInfo<void> {
  const SettingRoute() : super(SettingRoute.name, path: 'setting');

  static const String name = 'SettingRoute';
}

/// generated route for
/// [_i2.BookingScreen]
class BookingRoute extends _i10.PageRouteInfo<BookingRouteArgs> {
  BookingRoute(
      {_i11.Key? key,
      required String resourceId,
      required DateTime selectedDate})
      : super(BookingRoute.name,
            path: 'bookings',
            args: BookingRouteArgs(
                key: key, resourceId: resourceId, selectedDate: selectedDate));

  static const String name = 'BookingRoute';
}

class BookingRouteArgs {
  const BookingRouteArgs(
      {this.key, required this.resourceId, required this.selectedDate});

  final _i11.Key? key;

  final String resourceId;

  final DateTime selectedDate;

  @override
  String toString() {
    return 'BookingRouteArgs{key: $key, resourceId: $resourceId, selectedDate: $selectedDate}';
  }
}

/// generated route for
/// [_i3.CreateBookingScreen]
class CreateBookingRoute extends _i10.PageRouteInfo<CreateBookingRouteArgs> {
  CreateBookingRoute({_i11.Key? key, required DateTime selectedDateTime})
      : super(CreateBookingRoute.name,
            path: 'create- bookings',
            args: CreateBookingRouteArgs(
                key: key, selectedDateTime: selectedDateTime));

  static const String name = 'CreateBookingRoute';
}

class CreateBookingRouteArgs {
  const CreateBookingRouteArgs({this.key, required this.selectedDateTime});

  final _i11.Key? key;

  final DateTime selectedDateTime;

  @override
  String toString() {
    return 'CreateBookingRouteArgs{key: $key, selectedDateTime: $selectedDateTime}';
  }
}

/// generated route for
/// [_i4.CompleteProfileScreen]
class CompleteProfileRoute
    extends _i10.PageRouteInfo<CompleteProfileRouteArgs> {
  CompleteProfileRoute({_i11.Key? key})
      : super(CompleteProfileRoute.name,
            path: 'complete-profile', args: CompleteProfileRouteArgs(key: key));

  static const String name = 'CompleteProfileRoute';
}

class CompleteProfileRouteArgs {
  const CompleteProfileRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'CompleteProfileRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.HomeBase]
class HomeBase extends _i10.PageRouteInfo<void> {
  const HomeBase({List<_i10.PageRouteInfo>? children})
      : super(HomeBase.name, path: '/home-base', initialChildren: children);

  static const String name = 'HomeBase';
}

/// generated route for
/// [_i6.QRCodeScreen]
class QRCodeRoute extends _i10.PageRouteInfo<void> {
  const QRCodeRoute() : super(QRCodeRoute.name, path: 'qr-code');

  static const String name = 'QRCodeRoute';
}

/// generated route for
/// [_i7.HomeScreen]
class HomeRoute extends _i10.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({_i11.Key? key})
      : super(HomeRoute.name, path: 'home', args: HomeRouteArgs(key: key));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.RecordsScreen]
class RecordsRoute extends _i10.PageRouteInfo<void> {
  const RecordsRoute() : super(RecordsRoute.name, path: 'records');

  static const String name = 'RecordsRoute';
}

/// generated route for
/// [_i9.ProfileScreen]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile');

  static const String name = 'ProfileRoute';
}
