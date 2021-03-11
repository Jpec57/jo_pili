import 'package:flutter/material.dart';

class NoTransitionRoute extends MaterialPageRoute {
  NoTransitionRoute({builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => const Duration(milliseconds: 0);
}
