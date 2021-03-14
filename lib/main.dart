import 'package:flutter/material.dart';
import 'package:jo_pili/routing/my_router_delegate.dart';
import 'package:jo_pili/routing/my_router_information_parser.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final MyRouterDelegate routerDelegate = MyRouterDelegate();
  final MyRouteInformationParser routeInformationParser =
      MyRouteInformationParser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Joseph Pili',
      debugShowCheckedModeBanner: false,
      routerDelegate: routerDelegate,
      routeInformationParser: routeInformationParser,
      // navigatorKey: routing.Get.key,
      theme: ThemeData(
        primaryColor: Colors.black,
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: "Futura",
                color: Colors.black),
            headline2: TextStyle(
                fontFamily: 'Futura', fontSize: 30, color: Colors.black),
            bodyText1: TextStyle(
                color: Colors.white, fontSize: 18, fontFamily: 'Roboto'),
            bodyText2: TextStyle(
                color: Colors.black, fontSize: 18, fontFamily: 'Roboto')),
      ),
    );
  }
}
