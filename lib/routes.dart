import 'package:flutter/material.dart';

const String routeHome = '/home';
const String routeSophro = '/sophrologie';
const String routeCoaching = '/coaching';
const String routeStartrust = '/startrust';
const String routeNotFound = '/404';

class RouteInfos {
  final String title;
  final String path;
  final Widget? icon;

  RouteInfos({required this.title, required this.path, this.icon});
}

class RouteGenerator {
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
      RouteInfos(
          title: 'Startrust',
          path: routeStartrust,
          icon: Icon(Icons.accessibility)),
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
