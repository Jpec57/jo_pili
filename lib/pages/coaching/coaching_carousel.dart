import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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

class CoachingCarousel extends StatefulWidget {
  @override
  _CoachingCarouselState createState() => _CoachingCarouselState();
}

class _CoachingCarouselState extends State<CoachingCarousel> {
  int _currentSlide = 0;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = new ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  Widget _renderCoachingEnumWidget(String title, List<String> points) {
    return Scrollbar(
      controller: _scrollController,
      child: ListView(
        shrinkWrap: true,
        children: [
          Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              )),
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

  Widget _renderSection(BuildContext context, String imagePath, String title,
      List<String> points) {
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
          child: Center(child: _renderCoachingEnumWidget(title, points)),
        ),
      ),
    ];

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
      _renderSection(context, "assets/images/equipe.png",
          service_title_understand, [understand_part_1, understand_part_2]),
      _renderSection(
          context, "assets/images/mental_pro.jpg", service_title_develop, [
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
      _renderSection(context, "assets/images/ring.jpg", service_title_train,
          [train_part4, train_part5, train_part6])
    ];

    return Column(
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
              autoPlayAnimationDuration: Duration(milliseconds: 800),
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
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
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
    );
  }
}
