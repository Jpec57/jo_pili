import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jo_pili/AppColors.dart';
import 'package:jo_pili/routes.dart';
import 'package:jo_pili/widgets/nav_bar.dart';

const coaching_service = "Nos séances sont basées sur différents principes :";

const service_title_understand = "Comprendre le mental :";
const understand_part_1 = "Atteindre un état de fluidité";
const understand_part_2 = "Découvrir les piliers de la performance mentale";

const service_title_develop = "Développer le mental :";
const develop_part1 = "Gestion de l’énergie";
const develop_part2 = "Gestion des émotions";
const develop_part3 = "Gestion du stress";
const develop_part4 = "Gestion de l’estime de soi";
const develop_part5 = "Gestion des objectifs et de la motivation";
const develop_part6 =
    "Gestion de la concentration (dans le passé, présent et futur)";
const develop_part7 = "Gestion de la communication au sein d’un groupe";

const service_title_train = "Entrainer le mental :";
const develop_part8 = "Relâchement";
const develop_part9 = "Imagerie mentale";
const train_part3 = "Entrainer le mental :";
const train_part4 = "Réoxygénation de l’estime de soi";
const train_part5 = "Auto détermination";
const train_part6 = "Atteindre l’autonomie";

//Reportage france 3 FLORA
//https://youtu.be/JMRXn3i27d0
// Longeville
//https://youtu.be/E75ax8pWEmU
//Reportage tv8 Flora
//https://youtu.be/Ygeo33H_qiQ
class CoachingPage extends StatefulWidget {
  @override
  _CoachingPageState createState() => _CoachingPageState();
}

class _CoachingPageState extends State<CoachingPage> {
  int _currentSlide = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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

  Widget _renderCoachingEnumWidget(
      bool isEven, String title, List<String> points) {
    return Scrollbar(
      isAlwaysShown: true,
      child: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              title,
              style: TextStyle(fontFamily: 'Futura', fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
          ...points.map((point) => Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  point,
                  textAlign: TextAlign.center,
                ),
              ))
        ],
      ),
    );
  }

  Widget _renderSection(BuildContext context, String imagePath, bool isEven,
      String title, List<String> points) {
    const margin = 20.0;

    List<Widget> children = [
      Expanded(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(imagePath),
        ),
      )),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Center(child: _renderCoachingEnumWidget(isEven, title, points)),
        ),
      ),
    ];
    if (isEven) {
      children = children.reversed.toList();
    }
    return Padding(
      padding: EdgeInsets.only(bottom: 24),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: children,
            );
          }
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: children,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> carouselItems = [
      _renderSection(context, "assets/images/equipe.png", true,
          service_title_understand, [understand_part_1, understand_part_2]),
      _renderSection(context, "assets/images/mental_pro.jpg", false,
          service_title_develop, [
        develop_part1,
        develop_part2,
        develop_part3,
        develop_part4,
        develop_part5,
        develop_part6,
        develop_part7,
        develop_part8,
        develop_part9,
      ]),
      _renderSection(context, "assets/images/ring.jpg", true,
          service_title_train, [train_part4, train_part5, train_part6])
    ];

    return Scaffold(
      body: Column(
        children: [
          NavBar(currentRouteName: routeCoaching),
          Expanded(
            child: Container(
              color: AppColors.backgroundColor,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    generateBlurredImage(),
                    // Container(
                    //   color: AppColors.darkerGrey,
                    //   height: 50,
                    // ),
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
                            border: Border.all(color: AppColors.darkerGrey)),
                        child: Column(
                          children: [
                            CarouselSlider(
                                items: carouselItems,
                                options: CarouselOptions(
                                  height: 600,
                                  viewportFraction: 1,
                                  initialPage: 0,
                                  enableInfiniteScroll: true,
                                  reverse: false,
                                  autoPlay: true,
                                  autoPlayInterval: Duration(seconds: 15),
                                  autoPlayAnimationDuration:
                                      Duration(milliseconds: 800),
                                  autoPlayCurve: Curves.fastOutSlowIn,
                                  enlargeCenterPage: true,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _currentSlide = index;
                                    });
                                  },
                                  scrollDirection: Axis.horizontal,
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: carouselItems.map((url) {
                                int index = carouselItems.indexOf(url);
                                return Container(
                                  width: 8.0,
                                  height: 8.0,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 2.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _currentSlide == index
                                        ? Color.fromRGBO(0, 0, 0, 0.9)
                                        : Color.fromRGBO(0, 0, 0, 0.4),
                                  ),
                                );
                              }).toList(),
                            )
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0, bottom: 16),
                          child: Text(
                            "A qui s’adresse le coaching mental ?",
                            style:
                                TextStyle(fontFamily: 'Futura', fontSize: 30),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ...[
                                "• Aux sportifs de tous niveaux",
                                "• Aux entraineurs",
                                "• Aux entreprises",
                                "• Aux entrepreneurs",
                                "• Aux particuliers",
                                "• Aux étudiants"
                              ].map((string) => Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Text(string),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
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
