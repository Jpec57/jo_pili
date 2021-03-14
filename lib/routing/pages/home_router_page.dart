import 'package:flutter/material.dart';
import 'package:jo_pili/pages/home/home_page.dart';

class HomeRouterPage extends Page {
  final ValueChanged<String> onPageChanged;

  HomeRouterPage(this.onPageChanged);

  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
      settings: this,
      pageBuilder: (context, animation, animation2) {
        return HomePage(
          key: ValueKey("HomePage"),
          onPageChanged: onPageChanged,
        );
      },
    );
  }
}
