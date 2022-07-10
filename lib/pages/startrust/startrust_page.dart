import 'package:flutter/material.dart';
import 'package:jo_pili/routes.dart';
import 'package:jo_pili/widgets/nav_bar.dart';

import '../../widgets/main_drawer.dart';

class StarTrustPage extends StatelessWidget {
  const StarTrustPage({Key? key}) : super(key: key);

  static const texts = [
    "Se connaître, se comprendre et comprendre les autres sont des clés essentielles pour évoluer dans notre monde et interagir au quotidien tant dans la sphère personnelle que professionnelle.",
    "Mais parfois, peu importe à quel point nos intentions sont bonnes, notre comportement n'est pas le bon et va susciter la méfiance voire la défiance des personnes qui nous entourent.",
    "Pendant ces dernières années d'accompagnement, nous avons étudié les comportements qui pouvaient avoir un impact sur les décisions organisationnelles, l'exercice du leadership et le manque de confiance. Nous en avons fait un modèle de transformation et un outil d'évaluation de la confiance appelé Startrust, l'étoile de confiance.",
    "Imaginez être en mesure de mieux comprendre les relations interpersonnelles et ainsi identifier quels comportements favorisent la confiance, et, d'autre part, ceux qui génèrent la suspicion de votre entourage.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NavBar(currentRouteName: routeStartrust),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0, vertical: 16.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          SizedBox(
                            child:
                                Image.asset("assets/images/startrust_logo.png"),
                            width: MediaQuery.of(context).size.width * 0.15,
                          ),
                          Flexible(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Comment évaluer la confiance pour améliorer la performance managériale ?",
                                    style:
                                        Theme.of(context).textTheme.headline1,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, bottom: 16),
                                    child: Text(
                                      "Pourquoi et comment mesurer la confiance en entreprise pour améliorer la performance managériale ?",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2!
                                          .copyWith(
                                              fontStyle: FontStyle.italic,
                                              color: Color.fromARGB(255, 81, 81, 81)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Column(
                                children: [
                                  ...texts
                                      .map((text) => Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8.0),
                                            child: Text(text),
                                          ))
                                      .toList(),
                                  ...[
                                    RichText(
                                      text: TextSpan(
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                          children: [
                                            TextSpan(
                                              text:
                                                  "Après plusieurs années de recherche, nous lançons sur le marché ",
                                            ),
                                            TextSpan(
                                                text: "Startrust Manager",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                                text:
                                                    ", la première évaluation en ligne complète sur les comportements favorisant la confiance (ou la méfiance) dans le management.")
                                          ]),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                          children: [
                                            TextSpan(
                                              text:
                                                  "Cette évaluation permet d'analyser et d'améliorer sur 3 niveaux, 6 environnements et 7 dimensions la confiance personnelle et interpersonnelle du manager avec son équipe, son N+1, sa hiérarchie, ses partenaires, son entreprise et son travail.",
                                            ),
                                            TextSpan(
                                                text: "Startrust Manager",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                                text:
                                                    " est idéal pour initier votre transformation managériale, votre plan de performance durable mais aussi pour renforcer les liens dans une équipe ou tout simplement préparer le plan individuel de développement d'un manager ou d'un dirigeant.")
                                          ]),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                          children: [
                                            TextSpan(
                                              text:
                                                  "La recherche d’efficience en management, c’est apprendre à travers ses comportements à obtenir un maximum avec un minimum de dépenses d’énergie tout en garantissant l’efficacité, c’est-à-dire l’atteinte des objectifs fixés. Pour cela, nous avons développé un outil -",
                                            ),
                                            TextSpan(
                                                text: "Startrust Manager",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                                text:
                                                    " - qui permet une analyse des comportements efficients en management.")
                                          ]),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                          children: [
                                            TextSpan(
                                              text:
                                                  "De même qu’il est important de différencier efficience et efficacité, il est important aussi de veiller",
                                            ),
                                            TextSpan(
                                                text:
                                                    " à ne pas confondre confiance et fiabilité.",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            //La fiabilité est une question de caractère.
                                            TextSpan(
                                                text:
                                                    " Une personne peut être extrêmement digne de confiance, mais se méfier d'une situation qui la rend insécure.\n"),
                                            TextSpan(
                                              text:
                                                  "La fiabilité est une question de caractère. ",
                                            ),

                                            TextSpan(
                                                text: "Startrust Manager",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                              text:
                                                  " n'est pas destiné à mesurer la fiabilité d'une personne. En identifiant les choix de comportements,",
                                            ),
                                            //
                                            TextSpan(
                                                text: " Startrust Manager",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                              text:
                                                  " évalue les attitudes qui génèrent de la confiance ou de la méfiance afin qu'à partir de la lecture des résultats, la personne, l'équipe ou l'organisation puissent adapter ou améliorer ses comportements, ses habitudes pour atteindre ses objectifs en renforçant l’efficience par la confiance.",
                                            ),
                                          ]),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                          children: [
                                            TextSpan(
                                              text:
                                                  "Enfin, la confiance, dans le contexte de ",
                                            ),
                                            TextSpan(
                                                text: "Startrust Manager",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(
                                                text:
                                                    ", n'est pas liée au caractère ou à la dignité de l'individu. Il s'agit de comportements démontrés dans une situation ou une circonstance donnée, qui peuvent générer du confort ou de l'inconfort, de la sécurité ou de l'insécurité dans votre environnement, en vous-même ou chez les autres.")
                                          ]),
                                    ),
                                  ]
                                      .map((textWidget) => Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 8),
                                            child: textWidget,
                                          ))
                                      .toList()
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
