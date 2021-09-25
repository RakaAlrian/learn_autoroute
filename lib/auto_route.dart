import 'package:auto_route/annotations.dart';
import 'package:learn_autoroute/detail_page.dart';
import 'package:learn_autoroute/home_page.dart';
import 'package:learn_autoroute/page_four.dart';
import 'package:learn_autoroute/page_one.dart';
import 'package:learn_autoroute/page_three.dart';
import 'package:learn_autoroute/page_two.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(
        page: HomePage,
        initial: true
    ),
    AutoRoute(
        page: DetailPage,
    ),
    AutoRoute(
      page: PageOneScreen,
    ),
    AutoRoute(
      page: PageTwoScreen,
    ),
    AutoRoute(
      page: PageThreeScreen,
    ),
    AutoRoute(
      page: PageFourScreen,
    ),
  ],
)
class $LearnRouter {}
