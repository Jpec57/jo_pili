import 'package:flutter/material.dart';
import 'package:jo_pili/pages/unknown/unknown_page.dart';

class NotFoundRouterPage extends Page {
  final ValueChanged<String> onPageChanged;

  NotFoundRouterPage(this.onPageChanged);

  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
      settings: this,
      pageBuilder: (context, animation, animation2) {
        return NotFoundPage(
          key: ValueKey("NotFoundPage"),
          onPageChanged: onPageChanged,
        );
      },
    );
  }
}
