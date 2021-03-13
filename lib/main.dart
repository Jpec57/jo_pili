import 'package:flutter/material.dart';
import 'package:get/get.dart' as routing;
import 'package:jo_pili/pages/sophrologie/sophro_page.dart';
import 'package:jo_pili/routes.dart';
import 'package:jo_pili/routing/transitions/no_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Joseph Pili',
      debugShowCheckedModeBanner: false,
      navigatorKey: routing.Get.key,
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
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: routeCoaching,
      // initialRoute: routeHome,
      onGenerateInitialRoutes: (route) {
        return [
          NoTransitionRoute(builder: (_) => SophroPage()
              // HomePage()
              )
        ];
      },
      // home: HomePage(),
    );
  }
}
