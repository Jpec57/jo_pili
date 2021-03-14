import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jo_pili/AppColors.dart';
import 'package:jo_pili/pages/coaching/coaching_carousel.dart';
import 'package:jo_pili/pages/coaching/coaching_target.dart';
import 'package:jo_pili/routes.dart';
import 'package:jo_pili/widgets/main_drawer.dart';
import 'package:jo_pili/widgets/nav_bar.dart';

//Reportage france 3 FLORA
//https://youtu.be/JMRXn3i27d0
// Longeville
//https://youtu.be/E75ax8pWEmU
//Reportage tv8 Flora
//https://youtu.be/Ygeo33H_qiQ
class CoachingPage extends StatefulWidget {
  CoachingPage({Key? key});

  @override
  _CoachingPageState createState() => _CoachingPageState();
}

class _CoachingPageState extends State<CoachingPage> {
  Widget generateBlurredImage() {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/images/ring.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ClipRRect(
            child: BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: new Container(
                decoration:
                    new BoxDecoration(color: Colors.black.withOpacity(0.4)),
              ),
            ),
          ),
          // Align(heightFactor: 0.2, child: _textOverlayWidget())
        ],
      ),
    );
  }

  Widget _textOverlayWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
      padding: const EdgeInsets.all(15.0),
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.circular(10.0),
        shape: BoxShape.rectangle,
        color: Colors.black.withOpacity(0.5),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black26,
            blurRadius: 5.0,
            offset: new Offset(5.0, 5.0),
          ),
        ],
      ),
      child: new Column(
        children: <Widget>[
          new Text(
            "Coaching",
            style: new TextStyle(
              color: Colors.white,
              fontSize: 50.0,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      body: Column(
        children: [
          NavBar(
            currentRouteName: routeCoaching,
          ),
          Expanded(
            child: Container(
              color: AppColors.backgroundColor,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    generateBlurredImage(),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment
                                .bottomCenter, // 10% of the width, so there are ten blinds.
                            colors: <Color>[
                              AppColors.darkerGrey,
                              AppColors.lightGrey
                            ], // red to yellow
                            // tileMode: TileMode.repeated, // repeats the gradient over the canvas
                          ),
                        ),
                        child: CoachingCarousel(),
                      ),
                    ),
                    CoachingTarget(),
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
