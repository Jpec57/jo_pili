import 'package:flutter/material.dart';
import 'package:jo_pili/pages/startrust/startrust_page.dart';

class StartrustRouterPage extends Page {
  final ValueChanged<String> onPageChanged;

  StartrustRouterPage(this.onPageChanged);

  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
      settings: this,
      pageBuilder: (context, animation, animation2) {
        return StarTrustPage(
          key: ValueKey("StartrustPage"),
        );
      },
    );
  }
}
