import 'package:flutter/material.dart';
import 'package:jo_pili/pages/coaching/coaching.dart';
import 'package:jo_pili/pages/sophrologie/sophro_page.dart';
import 'pages/home/home_page.dart';

const String routeHome = '/';
const String routeSophro = '/sophrologie';
const String routeCoaching = '/coaching';
// final navKey = new GlobalKey<NavigatorState>();

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomePage());
      case routeSophro:
        return MaterialPageRoute(builder: (_) => SophroPage());
      case routeCoaching:
        return MaterialPageRoute(builder: (_) => CoachingPage());
      default:
        throw new Error();
    }
  }
}
