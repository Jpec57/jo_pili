import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jo_pili/AppColors.dart';
import 'package:jo_pili/routes.dart';
import 'package:jo_pili/routing/bloc/app_config_bloc.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _renderRouteTile(RouteInfos routeInfos) {
      return ListTile(
        leading: routeInfos.icon ??
            Icon(
              Icons.access_alarm,
              color: AppColors.darkerGrey,
            ),
        title: Text(
          routeInfos.title,
          style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w500,
              fontFamily: 'Futura'),
        ),
        onTap: () {
          BlocProvider.of<AppConfigBloc>(context)
              .onPageChanged(routeInfos.path);
        },
      );
    }

    return Drawer(
      child: Container(
        color: AppColors.lightGrey,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            InkWell(
              onTap: () {
                BlocProvider.of<AppConfigBloc>(context)
                    .onPageChanged(routeHome);
              },
              child: DrawerHeader(
                child: Container(),
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage("assets/images/bannier.png"))),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: RouteGenerator.getMainNavigationRoutes()
                  .map((RouteInfos routeInfos) => _renderRouteTile(routeInfos))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
