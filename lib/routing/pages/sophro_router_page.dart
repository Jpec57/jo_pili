import 'package:flutter/material.dart';
import 'package:jo_pili/pages/sophrologie/sophro_page.dart';

class SophroRouterPage extends Page {
  final ValueChanged<String> onPageChanged;

  SophroRouterPage(this.onPageChanged);

  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
      settings: this,
      pageBuilder: (context, animation, animation2) {
        return SophroPage(
          key: ValueKey("SophroPage"),
          onPageChanged: onPageChanged,
        );
      },
    );
  }
}
