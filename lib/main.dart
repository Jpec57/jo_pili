import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jo_pili/routing/bloc/app_config_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppConfigBloc>(
          create: (_) => AppConfigBloc(),
        )
      ],
      child: BlocListener<AppConfigBloc, AppConfigState>(
        listener: (BuildContext context, state) {},
        child: MaterialApp.router(
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
          // onGenerateRoute: RouteGenerator.generateRoute,
          // initialRoute: routeCoaching,
          // initialRoute: routeHome,
          // onUnknownRoute: ,
          // builder: (context, child) {
          //   return BlocListener<AppConfigBloc, AppConfigState>(
          //     listener: (context, state) {},
          //     child: child,
          //   );
          // },

          // home: BlocBuilder<AppConfigBloc, AppConfigState>(
          //   buildWhen: (AppConfigState previous, AppConfigState current) {
          //     return previous != current;
          //   },
          //   builder: (BuildContext context, state) {
          //     return Navigator(
          //       initialRoute: routeHome,
          //       pages: [
          //         MaterialPage(
          //           key: ValueKey('CoachingPage'),
          //           child: CoachingPage(),
          //         ),
          //         if (state.selectedPage == routeSophro)
          //           SophroRouterPage()
          //         else
          //           MaterialPage(
          //               key: ValueKey('UnknownPage'), child: NotFoundPage())
          //       ],
          //       onPopPage: (route, result) {
          //         if (!route.didPop(result)) {
          //           return false;
          //         }
          //         // Update the list of pages by setting _selectedBook to null
          //         // setState(() {
          //         //   _page = null;
          //         // });
          //         return true;
          //       },
          //     );
          //   },
          // ),

          // onGenerateInitialRoutes: (route) {
          //   return [
          //     NoTransitionRoute(builder: (_) => SophroPage()
          //         // HomePage()
          //         )
          //   ];
          // },
          // home: HomePage(),
        ),
      ),
    );
  }
}
