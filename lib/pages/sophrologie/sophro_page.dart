import 'package:flutter/material.dart';
import 'package:jo_pili/widgets/drawer.dart';

const toto = """

SERVICES
Nos séances sont basées sur différents principes :

Comprendre le mental :

Atteindre un état de fluidité

Découvrir les piliers de la performance mentale

Développer le mental :

Gestion de l’énergie

Gestion des émotions

Gestion du stress

Gestion de l’estime de soi

Gestion des objectifs et de la motivation

gallery/blog-mental-health-638x425
Gestion de la concentration (dans le passé, présent et futur)

Gestion de la communication au sein d’un groupe

Entrainer le mental :

Relâchement

Imagerie mentale

Réoxygénation de l’estime de soi
Auto détermination



Atteindre l’autonomie
""";

const target = """
A qui s’adresse le coaching mental ?
Aux sportifs de tous niveaux

Aux entraineurs

Aux entreprises

Aux entrepreneurs

Aux particuliers

Aux étudiants
""";

class SophroPage extends StatelessWidget {
  const SophroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("Sophrologie"),
      ),
      body: Container(),
    );
  }
}
