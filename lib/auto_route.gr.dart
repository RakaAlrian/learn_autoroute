// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import 'detail_page.dart' as _i4;
import 'home_page.dart' as _i3;
import 'page_four.dart' as _i8;
import 'page_one.dart' as _i5;
import 'page_three.dart' as _i7;
import 'page_two.dart' as _i6;
import 'user_model.dart' as _i9;

class LearnRouter extends _i1.RootStackRouter {
  LearnRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    DetailPageRoute.name: (routeData) {
      final args = routeData.argsAs<DetailPageRouteArgs>();
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.DetailPage(key: args.key, value: args.value));
    },
    PageOneScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PageOneScreen());
    },
    PageTwoScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.PageTwoScreen());
    },
    PageThreeScreenRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.PageThreeScreen());
    },
    PageFourScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PageFourScreenRouteArgs>(
          orElse: () => const PageFourScreenRouteArgs());
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.PageFourScreen(
              key: args.key, message: args.message, user: args.user));
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomePageRoute.name, path: '/'),
        _i1.RouteConfig(DetailPageRoute.name, path: '/detail-page'),
        _i1.RouteConfig(PageOneScreenRoute.name, path: '/page-one-screen'),
        _i1.RouteConfig(PageTwoScreenRoute.name, path: '/page-two-screen'),
        _i1.RouteConfig(PageThreeScreenRoute.name, path: '/page-three-screen'),
        _i1.RouteConfig(PageFourScreenRoute.name, path: '/page-four-screen')
      ];
}

class HomePageRoute extends _i1.PageRouteInfo<void> {
  const HomePageRoute() : super(name, path: '/');

  static const String name = 'HomePageRoute';
}

class DetailPageRoute extends _i1.PageRouteInfo<DetailPageRouteArgs> {
  DetailPageRoute({_i2.Key? key, required String value})
      : super(name,
            path: '/detail-page',
            args: DetailPageRouteArgs(key: key, value: value));

  static const String name = 'DetailPageRoute';
}

class DetailPageRouteArgs {
  const DetailPageRouteArgs({this.key, required this.value});

  final _i2.Key? key;

  final String value;
}

class PageOneScreenRoute extends _i1.PageRouteInfo<void> {
  const PageOneScreenRoute() : super(name, path: '/page-one-screen');

  static const String name = 'PageOneScreenRoute';
}

class PageTwoScreenRoute extends _i1.PageRouteInfo<void> {
  const PageTwoScreenRoute() : super(name, path: '/page-two-screen');

  static const String name = 'PageTwoScreenRoute';
}

class PageThreeScreenRoute extends _i1.PageRouteInfo<void> {
  const PageThreeScreenRoute() : super(name, path: '/page-three-screen');

  static const String name = 'PageThreeScreenRoute';
}

class PageFourScreenRoute extends _i1.PageRouteInfo<PageFourScreenRouteArgs> {
  PageFourScreenRoute({_i2.Key? key, String? message, _i9.UserModel? user})
      : super(name,
            path: '/page-four-screen',
            args: PageFourScreenRouteArgs(
                key: key, message: message, user: user));

  static const String name = 'PageFourScreenRoute';
}

class PageFourScreenRouteArgs {
  const PageFourScreenRouteArgs({this.key, this.message, this.user});

  final _i2.Key? key;

  final String? message;

  final _i9.UserModel? user;
}
