import 'package:auto_route/annotations.dart';
import 'package:learn_autoroute/detail_page.dart';
import 'package:learn_autoroute/home_page.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(
        page: HomePage,
        initial: true
    ),
    AutoRoute(
        page: DetailPage,
    ),
  ],
)
class $LearnRouter {}
