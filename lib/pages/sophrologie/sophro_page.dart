import 'package:flutter/material.dart';
import 'package:jo_pili/AppColors.dart';
import 'package:jo_pili/routes.dart';
import 'package:jo_pili/widgets/main_drawer.dart';
import 'package:jo_pili/widgets/nav_bar.dart';
import 'package:jpec_base/extensions/extension.dart';

class SophroPage extends StatelessWidget {
  const SophroPage({Key? key}) : super(key: key);

  Widget _renderHeadline1(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24, top: 32),
      child: Text(
        text,
        style: context.textTheme.headline1,
      ),
    );
  }

  Widget _renderHeadline2(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, top: 24),
      child: Text(
        text,
        style: context.textTheme.headline1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      body: Column(
        children: [
          NavBar(currentRouteName: routeSophro),
          Expanded(
            child: Container(
              color: AppColors.backgroundColor,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      _renderHeadline1(
                          context, "Qu’est-ce que la sophrologie ?"),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/sophro.png",
                          height: 400,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      _renderHeadline2(
                        context,
                        "La sophrologie est une méthode de développement personnel visant à l’amélioration du bien-être de l’individu",
                      ),
                      RichText(
                          text: TextSpan(
                              style: context.textTheme.bodyText2,
                              children: [
                            TextSpan(
                                text: "Alfonso Caycedo",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    ", neuropsychiatre de profession, après avoir utilisé l’hypnose dans le cadre de son activité, a cherché une méthode moins directive pour obtenir un grand relâchement corporel et un accès à des facettes enfouies de notre conscience. Il a créé la sophrologie à partir de méthodes de relaxations occidentales, mais aussi de techniques orientales empruntées à la méditation, au yoga, au zazen, etc… La sophrologie est devenue une discipline à part entière et un véritable art de vivre, une pratique quotidienne qui s’installe dans une démarche philosophique, voire spirituelle.")
                          ])),
                      _renderHeadline2(
                        context,
                        "La sophrologie psycho-comportementale, un courant, un choix…",
                      ),
                      RichText(
                          text: TextSpan(
                              style: context.textTheme.bodyText2,
                              children: [
                            TextSpan(
                                text: "La sophrologie psycho-comportementale",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    " est née du choix de développer une pratique empreinte d’une multitude de formes de courants, techniques, approches et autres méthodes (coaching, Programmation Neuro Linguistique, hypnose, approche centrée sur la personne,…), afin de s’inspirer de chacune d’entre elles pour en tirer le meilleur, et adapter ainsi la sophrologie au plus grand nombre, prenant en considération l’individualité de chacun d’entre eux dans un parcours personnalisé.")
                          ])),
                      _renderHeadline2(
                        context,
                        "En sophrologie psycho-comportementale :",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: RichText(
                            text: TextSpan(
                                style: context.textTheme.bodyText2,
                                children: [
                              TextSpan(
                                  text: "• La prise en charge",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      " s’apparente à un accompagnement dans la durée, au plus près de la personne, tant dans le fond que dans la forme du protocole proposé lors du premier entretien.")
                            ])),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: RichText(
                            text: TextSpan(
                                style: context.textTheme.bodyText2,
                                children: [
                              TextSpan(
                                  text: "• Le sophrologue",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      " devient alors pour la personne un accompagnateur au long cours lui permettant d’accéder à ses propres ressources et de faire émerger son plein potentiel pour l’accès à un mieux-être.")
                            ])),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: RichText(
                            text: TextSpan(
                                style: context.textTheme.bodyText2,
                                children: [
                              TextSpan(
                                  text:
                                      "• La sophrologie psycho-comportementale",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      ", dans son approche très singulière, vise à l’harmonisation entre le cerveau, le cœur et le corps. Loin de s’en tenir uniquement à l’une ou l’autre de ces entités, la sophrologie agit sur les trois à la fois, permettant à la personne de récupérer un état de bien-être global et durable.")
                            ])),
                      ),
                      RichText(
                          text: TextSpan(
                              style: context.textTheme.bodyText2,
                              children: [
                            TextSpan(text: "Avec, à son actif, "),
                            TextSpan(
                                text:
                                    "une multitude de techniques telles une « boîte à outils »,",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    " le sophrologue utilise mais aussi transmet à la personne tout ce dont elle a besoin pour atteindre l’objectif visé et devenir autonome une fois celui-ci atteint.")
                          ])),
                      _renderHeadline1(
                        context,
                        "Qu’est-ce que la méthode psycho-comportementale, et comment s’adapte-t-elle à la sophrologie ?",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: RichText(
                            text: TextSpan(
                                style: context.textTheme.bodyText2,
                                children: [
                              TextSpan(
                                  text: "La méthode psycho-comportementale",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      " est une thérapie brève, dont l’objectif est de substituer aux idées négatives et aux comportements inappropriés, des pensées positives et des réactions adaptées avec la réalité. Sophrologue, coach, ou spécialiste de l’hypnose puisent dans cette méthode pour "),
                              TextSpan(
                                  text: "mener à bien la relation d’aide.",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ])),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: RichText(
                            text: TextSpan(
                                style: context.textTheme.bodyText2,
                                children: [
                              TextSpan(
                                  text:
                                      "La thérapie comportementale et cognitive accompagne",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: " le client en demande à "),
                              TextSpan(
                                  text: "dépasser les symptômes",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      " qui sont invalidants au quotidien : stress, angoisse, inhibitions, agressivité, rituels, évitements, détresse, etc. Ces symptômes peuvent être en lien avec une souffrance psychique qu’il faut dévoiler, en utilisant les énergies internes des individus concernés. L’idée est de redonner à ces personnes "),
                              TextSpan(
                                  text:
                                      "un mode de vie en adéquation avec la réalité",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: ", et ses exigences."),
                            ])),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 100.0),
                        child: RichText(
                            text: TextSpan(
                                style: context.textTheme.bodyText2,
                                children: [
                              TextSpan(
                                  text: "Le sophrologue",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: " insiste particulièrement sur le "),
                              TextSpan(
                                  text: "travail de l’amélioration de soi",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                text:
                                    " à travers différents exercices, outils et techniques. Son but est de positionner la personne dans ",
                              ),
                              TextSpan(
                                  text:
                                      "un lâcher-prise afin de pointer les causes de ce mal-être",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text:
                                      ", notamment en passant par un état modifié de conscience comme peut l’engendrer l’hypnose."),
                            ])),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
