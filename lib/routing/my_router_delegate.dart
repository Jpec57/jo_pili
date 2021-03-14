import 'package:flutter/material.dart';
import 'package:jo_pili/routes.dart';
import 'package:jo_pili/routing/app_route_path.dart';
import 'package:jo_pili/routing/pages/coaching_router_page.dart';
import 'package:jo_pili/routing/pages/home_router_page.dart';
import 'package:jo_pili/routing/pages/not_found_router_page.dart';
import 'package:jo_pili/routing/pages/sophro_router_page.dart';

class MyRouterDelegate extends RouterDelegate<AppRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRoutePath> {
  final GlobalKey<NavigatorState> navigatorKey;

  String _selectedPage = routeHome;
  bool show404 = false;

  MyRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();
  // MyRouterDelegate() : navigatorKey = Get.key!;

  AppRoutePath get currentConfiguration {
    // print("currentConfiguration 404 ? $show404 | $_selectedPage");
    if (show404) {
      return AppRoutePath.unknown();
    }
    if (_selectedPage == routeHome) {
      return AppRoutePath.home();
    }
    if (_selectedPage == routeCoaching) {
      return AppRoutePath.coaching();
    }
    if (_selectedPage == routeSophro) {
      return AppRoutePath.sophro();
    }
    return AppRoutePath.unknown();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [
        if (show404 == true)
          NotFoundRouterPage(_handlePageChange)
        else if (_selectedPage == routeSophro)
          SophroRouterPage(_handlePageChange)
        else if (_selectedPage == routeCoaching)
          CoachingRouterPage(_handlePageChange)
        else if (_selectedPage == routeHome)
          HomeRouterPage(_handlePageChange)
        else
          NotFoundRouterPage(_handlePageChange)
      ],
      onPopPage: (route, result) {
        //TODO never called...
        if (!route.didPop(result)) {
          return false;
        }
        show404 = false;
        _selectedPage = route.settings.name ?? routeHome;
        notifyListeners();
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(AppRoutePath path) async {
    if (path.isUnknown) {
      show404 = true;
      return;
    }
    show404 = false;
    _selectedPage = path.selectedRoute;
    notifyListeners();
  }

  void _handlePageChange(String page) {
    show404 = false;
    _selectedPage = page;
    notifyListeners();
  }
}
