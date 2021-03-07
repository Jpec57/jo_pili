import 'package:flutter/material.dart';
import 'package:jo_pili/pages/home/home_page.dart';
import 'package:jo_pili/routes.dart';
import 'package:jo_pili/widgets/drawer.dart';

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
      theme: ThemeData(
          primaryColor: Colors.black,
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.black),
          )),
      onGenerateRoute: RouteGenerator.generateRoute,
      home: HomePage(),
    );
  }
}
