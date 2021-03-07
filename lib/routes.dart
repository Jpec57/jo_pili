import 'package:flutter/material.dart';
import 'pages/home/home_page.dart';

const String routeHome = '/';

// final navKey = new GlobalKey<NavigatorState>();

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomePage());
      default:
        throw new Error();
    }
  }
}
