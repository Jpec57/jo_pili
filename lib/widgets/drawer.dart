import 'package:flutter/material.dart';
import 'package:get/get.dart' as routing;
import 'package:jo_pili/routes.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          InkWell(
            onTap: () {
              routing.Get.toNamed(routeHome);
            },
            child: DrawerHeader(
              child: Container(),
              // Text('Menu',
              // style: TextStyle(
              //     color: Colors.white,
              //     fontWeight: FontWeight.bold,
              //     fontSize: 20)),
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("assets/images/bannier.png"))),
            ),
          ),
          ListTile(
            leading: Icon(Icons.access_alarm),
            title: Text(
              'Sophrologie',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              routing.Get.toNamed(routeSophro);
            },
          ),
          ListTile(
            leading: Icon(Icons.hourglass_empty),
            title: Text(
              'Coaching',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              routing.Get.toNamed(routeCoaching);
            },
          ),
        ],
      ),
    );
  }
}
