// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import 'detail_page.dart' as _i4;
import 'home_page.dart' as _i3;

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
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomePageRoute.name, path: '/'),
        _i1.RouteConfig(DetailPageRoute.name, path: '/detail-page')
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
