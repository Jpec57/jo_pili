import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jo_pili/AppColors.dart';
import 'package:jo_pili/routes.dart';
import 'package:jo_pili/widgets/main_drawer.dart';
import 'package:jo_pili/widgets/nav_bar.dart';

part 'about_me.dart';
part 'fixed_background_image.dart';

const rdv_place = "Nous conviendrons ensemble d'un lieu de rendez-vous.";
const method_used =
    "J'utilise diverses méthodes au cours de mes séances telles que la relaxation, l'imagerie mentale, la fixation d'objectifs, l'activation et la réorientation du discours interne.";
const goal =
    "Vos objectifs peuvent être multiples et différents, comme par exemple la gestion du stress ou des émotions, le développement de la confiance en soi, de la concentration et de la relaxation, le tout dans une optique d'optimisation de la performance ou de bien-être.";
const individual_or_group =
    "Les séances peuvent être individuelles comme collectives.";
const adaptative =
    "Ces méthodes sont adaptables à tout niveau et dans tous les sports ainsi que le monde de l'entreprise, l'étudiant , l'enfant et le particulier . ";

class HomePage extends StatefulWidget {
  final ValueChanged<String> onPageChanged;

  const HomePage({Key? key, required this.onPageChanged}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // late AnimationController _controller = AnimationController(
  //   duration: const Duration(seconds: 5),
  //   vsync: this,
  // )..repeat(reverse: true);
  //
  // late Animation<Offset> _offsetAnimation = Tween<Offset>(
  //   end: Offset.zero,
  //   begin: const Offset(50, 0.0),
  // ).animate(CurvedAnimation(
  //   parent: _controller,
  //   curve: Curves.bounceIn,
  // ));

  @override
  void initState() {
    super.initState();
    // _offsetAnimation = Tween<Offset>(
    //   begin: Offset.zero,
    //   end: const Offset(1000, 0.0),
    // ).animate(CurvedAnimation(
    //   parent: _controller,
    //   curve: Curves.elasticIn,
    // ));
  }

  @override
  void dispose() {
    super.dispose();
    // _offsetAnimation.
    // _controller.dispose();
  }

  Widget _renderBulletPoint(Widget child) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24),
      child: child,
    );
  }

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: MainDrawer(onPageChanged: widget.onPageChanged),
        body: Column(
          children: [
            NavBar(
                currentRouteName: routeHome,
                onPageChanged: widget.onPageChanged),
            Expanded(
              child: Container(
                color: AppColors.backgroundColor,
                child: Stack(
                  children: [
                    _renderBackgroundFixedImage(width),
                    SingleChildScrollView(
                      child: Container(
                        // color: backgroundColor,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            _renderBackgroundClipper(
                                AppColors.backgroundColor, width),
                            //Blur test
                            Container(
                              color: AppColors.backgroundColor,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.1),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, bottom: 20),
                                      child: aboutMeWidget(context, null),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        _renderBulletPoint(Text(rdv_place)),
                                        _renderBulletPoint(Text(method_used)),
                                        _renderBulletPoint(Text(goal)),
                                        _renderBulletPoint(
                                            Text(individual_or_group)),
                                        _renderBulletPoint(Text(
                                          adaptative,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 24),
                                      child: Text(
                                        "Contact: 06 64 03 52 78",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
