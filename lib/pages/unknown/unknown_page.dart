import 'package:flutter/material.dart';
import 'package:jo_pili/routes.dart';
import 'package:jo_pili/widgets/nav_bar.dart';
import 'package:jpec_base/extensions/extension.dart';

class NotFoundPage extends StatelessWidget {
  final ValueChanged<String> onPageChanged;

  const NotFoundPage({Key? key, required this.onPageChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavBar(
            currentRouteName: routeNotFound,
            onPageChanged: onPageChanged,
          ),
          Text(
            "NOT FOUND",
            style: context.textTheme.headline1,
          )
        ],
      ),
    );
  }
}
