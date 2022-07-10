import 'package:flutter/material.dart';
import 'package:jo_pili/routes.dart';
import 'package:jo_pili/routing/app_route_path.dart';

class MyRouteInformationParser extends RouteInformationParser<AppRoutePath>
    with ChangeNotifier {
  /// HANDLING URI TO DATA
  @override
  Future<AppRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    print("MyRouteInformationParser parseRouteInformation FIRST");

    if (routeInformation.location == null) {
      return AppRoutePath.home();
    }
    final uri = Uri.parse(routeInformation.location!);
    // print(
    //     "MyRouteInformationParser parseRouteInformation ${routeInformation.location} PATH ${uri.path}");

    // Handle '/'
    if (uri.pathSegments.length == 0 || uri.path == routeHome) {
      return AppRoutePath.home();
    }

    if (uri.path == routeCoaching) {
      return AppRoutePath.coaching();
    }

    if (uri.path == routeSophro) {
      return AppRoutePath.sophro();
    }
    if (uri.path == routeStartrust) {
      return AppRoutePath.startrust();
    }

    // // Handle '/book/:id'
    // if (uri.pathSegments.length == 2) {
    //   if (uri.pathSegments[0] != 'book') return BookRoutePath.unknown();
    //   var remaining = uri.pathSegments[1];
    //   var id = int.tryParse(remaining);
    //   if (id == null) return BookRoutePath.unknown();
    //   return AppRoutePath.details(id);
    // }
    // Handle unknown routes
    return AppRoutePath.unknown();
  }

  /// HANDLING DATA TO URI
  @override
  RouteInformation restoreRouteInformation(AppRoutePath path) {
    if (path.isUnknown) {
      return RouteInformation(location: routeNotFound);
    }
    if (path.isHomePage) {
      return RouteInformation(location: routeHome);
    }
    if (path.isCoachingPage) {
      return RouteInformation(location: routeCoaching);
    }
    if (path.isSophroPage) {
      return RouteInformation(location: routeSophro);
    }
    if (path.isStartrustPage) {
      return RouteInformation(location: routeStartrust);
    }
    return RouteInformation(location: routeNotFound);
  }
}
