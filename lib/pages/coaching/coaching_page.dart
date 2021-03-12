import 'dart:ui';

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
const train_part1 = "Relâchement";
const train_part2 = "Imagerie mentale";
const train_part3 = "Entrainer le mental :";
const train_part4 = "Réoxygénation de l’estime de soi";
const train_part5 = "Auto détermination";
const train_part6 = "Atteindre l’autonomie";

const target = """
A qui s’adresse le coaching mental ?
Aux sportifs de tous niveaux

Aux entraineurs

Aux entreprises

Aux entrepreneurs

Aux particuliers

Aux étudiants
""";

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
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget generateBlurredImage() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 300,
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
              height: 300,
              decoration:
                  new BoxDecoration(color: Colors.black.withOpacity(0.5)),
            ),
          ),
        ),
        // Align(heightFactor: 0.2, child: _textOverlayWidget())
      ],
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

  Widget _renderCoachingEnumWidget(String title, List<String> points) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              title,
              style: TextStyle(fontFamily: 'Futura', fontSize: 30),
            ),
          ),
          ...points.map((point) => Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(point),
              ))
        ],
      ),
    );
  }

  Widget _renderSection(
      String imagePath, bool isEven, String title, List<String> points) {

    const margin = 20.0;

    List<Widget> children = [
      Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: isEven == true ? margin : 0.0, right: isEven == true ? 0.0 : margin),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                  imagePath),
            ),
          )
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _renderCoachingEnumWidget(
              title,
              points),
        ),
      ),
    ];
    if (isEven){
      children = children.reversed.toList();
    }
    return Padding(
      padding: EdgeInsets.only(bottom: 24),
      child: Row(
        children: children,
      ),
    );
  }

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
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: generateBlurredImage(),
                    ),
                    Column(
                      children: [
                        _renderSection("assets/images/mental_pro.jpg", true, service_title_understand, [understand_part_1, understand_part_2]),
                        _renderSection("assets/images/republicain.jpg", false, service_title_develop, [
                          develop_part1,
                          develop_part2,
                          develop_part3,
                          develop_part4,
                          develop_part5,
                          develop_part6,
                          develop_part7
                        ]),
                        _renderSection("assets/images/ring.jpg", true, service_title_train, [
                          train_part1,
                          train_part2,
                          train_part3,
                          train_part4,
                          train_part5,
                          train_part6
                        ]),
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
