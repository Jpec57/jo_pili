import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jo_pili/AppColors.dart';
import 'package:jo_pili/routes.dart';

class NavBar extends StatelessWidget {
  final String currentRouteName;
  const NavBar({Key? key, required this.currentRouteName}) : super(key: key);

  Widget _renderNavTabButton(
      BuildContext context, String sectionName, String route) {
    bool isSelected = route == currentRouteName;

    return InkWell(
      onTap: () {
        Get.toNamed(route);
      },
      child: Container(
        decoration: isSelected
            ? BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.white, width: 1)))
            : BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            sectionName.toUpperCase(),
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'Futura',
                color: isSelected ? Colors.white : AppColors.lightGrey),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.darkGrey,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.zero,
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black54,
            blurRadius: 20.0,
            offset: Offset(
              5.0,
              5.0,
            ),
          ),
        ],
          // boxShadow:
          ),
      child: Container(
        height: 100,
        child: Row(
          children: [
            InkWell(
                onTap: () {
                  Get.toNamed(routeHome);
                },
                child: Image.asset("assets/images/bannier.png")),
            Expanded(
              child: _renderNavButtons(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _renderNavButtons(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 750){
          return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: IconButton(icon: Icon(Icons.menu, size: 40,), onPressed: (){
                }),
              ),
            ],
          );
        }
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _renderNavTabButton(context, 'Accueil', routeHome),
            _renderNavTabButton(context, 'Sophrologie', routeSophro),
            _renderNavTabButton(context, 'Coaching', routeCoaching),
          ],
        );
      },
    );
  }
}
