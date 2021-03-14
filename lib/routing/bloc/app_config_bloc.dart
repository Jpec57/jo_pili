import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:jo_pili/routes.dart';
import 'package:jo_pili/routing/my_router_delegate.dart';
import 'package:jo_pili/routing/my_router_information_parser.dart';
import 'package:meta/meta.dart';

part 'app_config_event.dart';
part 'app_config_state.dart';

class AppConfigBloc extends Bloc<AppConfigEvent, AppConfigState> {
  AppConfigBloc() : super(AppConfigInitial());

  @override
  Stream<AppConfigState> mapEventToState(
    AppConfigEvent event,
  ) async* {
    if (event is OnPageChanged) {
      yield AppConfigNormalState(selectedPage: event.newRouteName);
    }
    // else if (event is AuthenticationLogoutRequested) {
    // yield await _mapAuthenticationStatusChangedToState(event);
    // }
  }
}
