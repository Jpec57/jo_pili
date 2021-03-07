import 'package:flutter/material.dart';
import 'package:jo_pili/widgets/drawer.dart';

const blabla = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nec venenatis lacus. Maecenas posuere augue at felis convallis, sit amet hendrerit purus interdum. Etiam fringilla facilisis quam et accumsan. Phasellus lacus justo, commodo sit amet volutpat ut, vestibulum tincidunt mi. Duis ut arcu ac augue convallis commodo eget a arcu. Pellentesque vitae arcu iaculis, hendrerit mi nec, cursus ex. Nam vel ligula in lorem accumsan porta. Ut aliquet faucibus leo vel malesuada. Sed rhoncus, mauris in pulvinar convallis, ipsum purus ultricies ante, a pulvinar neque nisi dapibus justo. Curabitur venenatis viverra lorem, sit amet scelerisque libero consequat vel.

Cras bibendum tincidunt urna, ac molestie tellus luctus et. Vestibulum luctus suscipit nisi. Mauris pretium urna faucibus laoreet vehicula. Cras vel velit auctor, imperdiet diam vel, vestibulum urna. Sed scelerisque interdum vestibulum. Mauris id mi ante. Donec fermentum nisi vitae risus pharetra, eget pulvinar dolor faucibus. Sed sodales lacus ac ipsum aliquet pulvinar. Donec a tempor diam, eu blandit justo. Proin aliquet, nulla iaculis feugiat condimentum, dolor lectus tincidunt enim, id scelerisque tellus tellus eu ipsum. Maecenas porttitor, purus in auctor rhoncus, nunc justo hendrerit ex, sed pulvinar leo urna id purus. Vestibulum auctor sodales nulla, a pretium nibh commodo vitae. Duis eget tortor urna. Cras eget tempor nunc, vitae cursus nisi. Suspendisse molestie rutrum nisi ut vehicula.

Nam non diam mollis, commodo erat sit amet, aliquam ligula. Nunc vel leo vel arcu pellentesque sodales a non nisi. Donec sit amet turpis lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse ac libero quam. Donec pharetra mi molestie urna pretium viverra. Mauris in lorem vel urna molestie ornare. Morbi ultrices metus felis, et mattis tellus rhoncus et. Nulla a varius justo, vitae facilisis orci. Maecenas tincidunt turpis eget diam rutrum, ac porttitor sapien porttitor. Proin sed magna eget nunc fringilla vehicula. Phasellus aliquet tincidunt tortor, vitae hendrerit purus pellentesque vel. Cras sed condimentum elit. In hac habitasse platea dictumst.
""";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("A propos de moi"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "A propos de moi",
            ),
            Image.asset("assets/images/jo.jpeg"),
            Text(
                "Ancien Boxeur professionnel et aujourd’hui préparateur mental certifié, coach professionnel ainsi que technicien en PNL."),
            Text(
                "Je propose des séances de coaching en préparation mentale et développement personnel auprès d'un public varié allant du sportif, au manager, passant par l'entrepreneur ou l'étudiant."),
            Text("Nous conviendrons ensemble d'un lieu de rendez-vous."),
            Text(
                "J'utilise diverses méthodes au cours de mes séances telles que la relaxation, l'imagerie mentale, la fixation d'objectifs, l'activation et la réorientation du discours interne."),
            Text(
                "Vos objectifs peuvent être multiples et différents, comme par exemple la gestion du stress ou des émotions, le développement de la confiance en soi, de la concentration et de la relaxation, le tout dans une optique d'optimisation de la performance ou de bien-être."),
            Text("Les séances peuvent être individuelles comme collectives."),
            Text(
                "Ces méthodes sont adaptables à tout niveau et dans tous les sports ainsi que le monde de l'entreprise."),
            Text("06 64 03 52 78"),
            Text(blabla),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
