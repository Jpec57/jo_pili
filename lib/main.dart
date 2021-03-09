import 'package:flutter/material.dart';
import 'package:get/get.dart' as routing;
import 'package:jo_pili/pages/home/home_page.dart';
import 'package:jo_pili/routes.dart';

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
            bodyText1: TextStyle(color: Colors.white, fontSize: 18),
            bodyText2: TextStyle(color: Colors.black, fontSize: 18),
          ).apply(fontFamily: 'Roboto')),
      onGenerateRoute: RouteGenerator.generateRoute,
      home: HomePage(),
    );
  }
}
