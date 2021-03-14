import 'package:flutter/material.dart';
import 'package:jo_pili/pages/coaching/coaching_page.dart';

class CoachingRouterPage extends Page {
  final ValueChanged<String> onPageChanged;

  CoachingRouterPage(this.onPageChanged);

  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
      settings: this,
      pageBuilder: (context, animation, animation2) {
        return CoachingPage(
          key: ValueKey("CoachingPage"),
          onPageChanged: onPageChanged,
        );
      },
    );
  }
}
