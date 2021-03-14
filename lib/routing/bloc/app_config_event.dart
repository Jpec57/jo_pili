part of 'app_config_bloc.dart';

@immutable
abstract class AppConfigEvent {}

class OnPageChanged extends AppConfigEvent {
  final String newRouteName;

  OnPageChanged({required this.newRouteName});
}
