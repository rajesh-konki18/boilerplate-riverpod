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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:riverpod_boilerplate/presentation/ui/modals/bottom_sheets/bottom_sheet_factory.dart'
    as _i10;
import 'package:riverpod_boilerplate/presentation/ui/modals/bottom_sheets/logout/logout_bottom_sheet.dart'
    as _i5;
import 'package:riverpod_boilerplate/presentation/ui/screens/app_start_screen.dart'
    as _i1;
import 'package:riverpod_boilerplate/presentation/ui/screens/home/home_screen.dart'
    as _i6;
import 'package:riverpod_boilerplate/presentation/ui/screens/login/forgot_password.dart'
    as _i3;
import 'package:riverpod_boilerplate/presentation/ui/screens/login/hq_login_screen.dart'
    as _i4;
import 'package:riverpod_boilerplate/presentation/ui/screens/login/signup_screen.dart'
    as _i2;
import 'package:riverpod_boilerplate/presentation/ui/screens/profile/profile_screen.dart'
    as _i7;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AppStartRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.AppStartScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>(
          orElse: () => const SignUpRouteArgs());
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.SignUpScreen(key: args.key),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ForgotPasswordRouteArgs>(
          orElse: () => const ForgotPasswordRouteArgs());
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i3.ForgotPasswordScreen(key: args.key),
      );
    },
    HQLoginRoute.name: (routeData) {
      final args = routeData.argsAs<HQLoginRouteArgs>(
          orElse: () => const HQLoginRouteArgs());
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i4.HQLoginScreen(key: args.key),
      );
    },
    LogoutBottomSheetRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.LogoutBottomSheet(),
        customRouteBuilder: _i10.BottomSheetFactory.modalSheetBuilder,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomeScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfileScreen(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          AppStartRoute.name,
          path: '/',
          children: [
            _i8.RouteConfig(
              HomeRoute.name,
              path: '',
              parent: AppStartRoute.name,
            ),
            _i8.RouteConfig(
              ProfileRoute.name,
              path: 'profile-screen',
              parent: AppStartRoute.name,
            ),
          ],
        ),
        _i8.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-screen',
        ),
        _i8.RouteConfig(
          ForgotPasswordRoute.name,
          path: '/forgot-password-screen',
        ),
        _i8.RouteConfig(
          HQLoginRoute.name,
          path: '/h-qlogin-screen',
        ),
        _i8.RouteConfig(
          LogoutBottomSheetRoute.name,
          path: '/logout-bottom-sheet',
        ),
        _i8.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.AppStartScreen]
class AppStartRoute extends _i8.PageRouteInfo<void> {
  const AppStartRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AppStartRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'AppStartRoute';
}

/// generated route for
/// [_i2.SignUpScreen]
class SignUpRoute extends _i8.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({_i9.Key? key})
      : super(
          SignUpRoute.name,
          path: '/sign-up-screen',
          args: SignUpRouteArgs(key: key),
        );

  static const String name = 'SignUpRoute';
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i8.PageRouteInfo<ForgotPasswordRouteArgs> {
  ForgotPasswordRoute({_i9.Key? key})
      : super(
          ForgotPasswordRoute.name,
          path: '/forgot-password-screen',
          args: ForgotPasswordRouteArgs(key: key),
        );

  static const String name = 'ForgotPasswordRoute';
}

class ForgotPasswordRouteArgs {
  const ForgotPasswordRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'ForgotPasswordRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.HQLoginScreen]
class HQLoginRoute extends _i8.PageRouteInfo<HQLoginRouteArgs> {
  HQLoginRoute({_i9.Key? key})
      : super(
          HQLoginRoute.name,
          path: '/h-qlogin-screen',
          args: HQLoginRouteArgs(key: key),
        );

  static const String name = 'HQLoginRoute';
}

class HQLoginRouteArgs {
  const HQLoginRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'HQLoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.LogoutBottomSheet]
class LogoutBottomSheetRoute extends _i8.PageRouteInfo<void> {
  const LogoutBottomSheetRoute()
      : super(
          LogoutBottomSheetRoute.name,
          path: '/logout-bottom-sheet',
        );

  static const String name = 'LogoutBottomSheetRoute';
}

/// generated route for
/// [_i6.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i7.ProfileScreen]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile-screen',
        );

  static const String name = 'ProfileRoute';
}
