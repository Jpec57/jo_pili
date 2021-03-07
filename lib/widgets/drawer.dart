import 'package:flutter/material.dart';
import 'package:jpec_base/extensions/extension.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
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
          ListTile(
            leading: Icon(Icons.access_alarm),
            title: Text(
              'Sophrologie',
              style: context.textTheme.bodyText1!.copyWith(color: Colors.black),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.hourglass_empty),
            title: Text(
              'Coaching',
              style: context.textTheme.bodyText1!.copyWith(color: Colors.black),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
