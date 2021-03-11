import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:jo_pili/pages/coaching/coaching_page.dart';
import 'package:jo_pili/pages/sophrologie/sophro_page.dart';
import 'package:jo_pili/routing/transitions/no_transition.dart';

import 'pages/home/home_page.dart';

const String routeHome = '/home';
const String routeSophro = '/sophrologie';
const String routeCoaching = '/coaching';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    print("setting name ${settings.name}");
    switch (settings.name) {
      case routeCoaching:
        html.window.history.pushState(null, "Coahing", routeCoaching);
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
}
