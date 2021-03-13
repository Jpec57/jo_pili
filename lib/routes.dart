import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:jo_pili/pages/coaching/coaching_page.dart';
import 'package:jo_pili/pages/sophrologie/sophro_page.dart';
import 'package:jo_pili/routing/transitions/no_transition.dart';

import 'pages/home/home_page.dart';

const String routeHome = '/home';
const String routeSophro = '/sophrologie';
const String routeCoaching = '/coaching';

class RouteInfos {
  final String title;
  final String path;
  final Widget? icon;

  RouteInfos({required this.title, required this.path, this.icon});
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    print("setting name ${settings.name}");
    switch (settings.name) {
      case routeCoaching:
        html.window.history.pushState(null, "Coaching", routeCoaching);
        return NoTransitionRoute(builder: (_) => CoachingPage());
      case routeHome:
        html.window.history.pushState(null, "Accueil", routeHome);
        return NoTransitionRoute(builder: (_) => HomePage());
      case routeSophro:
        html.window.history.pushState(null, "Sophrologie", routeSophro);

        return NoTransitionRoute(builder: (_) => SophroPage());

      default:
        throw new Exception("Need to implement page ${settings.name}");
    }
  }

  static List<RouteInfos> getMainNavigationRoutes() {
    return [
      RouteInfos(title: 'Accueil', path: routeHome, icon: Icon(Icons.home)),
      RouteInfos(
          title: 'Sophrologie',
          path: routeSophro,
          icon: Icon(Icons.attribution_rounded)),
      RouteInfos(
          title: 'Coaching',
          path: routeCoaching,
          icon: Icon(Icons.fitness_center_rounded)),
    ];
  }

  static RouteInfos getRouteInfosFromPath(String path) {
    List<RouteInfos> routeInfos = getMainNavigationRoutes();
    for (RouteInfos route in routeInfos) {
      if (route.path == path) {
        return route;
      }
    }
    return RouteInfos(title: "404", path: "");
  }
}
