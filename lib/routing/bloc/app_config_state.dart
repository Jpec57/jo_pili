part of 'app_config_bloc.dart';

@immutable
abstract class AppConfigState extends Equatable {
  final bool show404;
  final String selectedPage;
  final MyRouterDelegate routerDelegate = MyRouterDelegate();
  final MyRouteInformationParser routeInformationParser =
      MyRouteInformationParser();

  AppConfigState({required this.selectedPage, this.show404 = false});

  @override
  List<Object> get props => [show404, selectedPage];
}

class AppConfigInitial extends AppConfigState {
  AppConfigInitial() : super(selectedPage: routeHome);
}

class AppConfigNormalState extends AppConfigState {
  AppConfigNormalState({required String selectedPage, bool show404 = false})
      : super(selectedPage: selectedPage, show404: show404);
}
