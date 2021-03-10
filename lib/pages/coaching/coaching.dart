import 'package:flutter/material.dart';
import 'package:jo_pili/AppColors.dart';
import 'package:jo_pili/routes.dart';
import 'package:jo_pili/widgets/nav_bar.dart';

//Reportage france 3 FLORA
//https://youtu.be/JMRXn3i27d0
// Longeville
//https://youtu.be/E75ax8pWEmU
//Reportage tv8 Flora
//https://youtu.be/Ygeo33H_qiQ
class CoachingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavBar(currentRouteName: routeCoaching),
          Expanded(
            child: Container(
              color: AppColors.backgroundColor,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text("Coaching"),
                    //   Container(
                    //     height: 300,
                    //     width: 300,
                    //     decoration: BoxDecoration(
                    //       image: DecorationImage(image: AssetImage(
                    //         "assets/images/paysage.jpeg",
                    //
                    //       ))
                    //     ),
                    //     child: BackdropFilter(
                    //   filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    // child: Container()),
                    //   )
                    //   ,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
