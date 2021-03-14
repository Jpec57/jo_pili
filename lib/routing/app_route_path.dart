import 'package:jo_pili/routes.dart';

class AppRoutePath {
  final String selectedRoute;
  final bool isUnknown;

  AppRoutePath.home()
      : selectedRoute = routeHome,
        isUnknown = false;

  AppRoutePath.sophro()
      : selectedRoute = routeSophro,
        isUnknown = false;
  AppRoutePath.coaching()
      : selectedRoute = routeCoaching,
        isUnknown = false;

  AppRoutePath.unknown()
      : selectedRoute = routeNotFound,
        isUnknown = true;

  bool get isHomePage => selectedRoute == routeHome || selectedRoute == "";

  bool get isCoachingPage => selectedRoute == routeCoaching;
  bool get isSophroPage => selectedRoute == routeSophro;

  @override
  String toString() {
    return 'AppRoutePath{selectedRoute: |$selectedRoute|, isUnknown: $isUnknown}';
  }
}
