import 'package:flutter/material.dart';

class CoachingTarget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50.0, bottom: 16),
          child: Text(
            "A qui s’adresse le coaching mental ?",
            style: TextStyle(fontFamily: 'Futura', fontSize: 30),
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
    );
  }
}
