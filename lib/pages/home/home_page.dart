import 'package:flutter/material.dart';
import 'package:jo_pili/pages/clippers/diagonal_clipper.dart';
import 'package:jo_pili/widgets/drawer.dart';
import 'package:jpec_base/extensions/extension.dart';

const blabla = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nec venenatis lacus. Maecenas posuere augue at felis convallis, sit amet hendrerit purus interdum. Etiam fringilla facilisis quam et accumsan. Phasellus lacus justo, commodo sit amet volutpat ut, vestibulum tincidunt mi. Duis ut arcu ac augue convallis commodo eget a arcu. Pellentesque vitae arcu iaculis, hendrerit mi nec, cursus ex. Nam vel ligula in lorem accumsan porta. Ut aliquet faucibus leo vel malesuada. Sed rhoncus, mauris in pulvinar convallis, ipsum purus ultricies ante, a pulvinar neque nisi dapibus justo. Curabitur venenatis viverra lorem, sit amet scelerisque libero consequat vel.

Cras bibendum tincidunt urna, ac molestie tellus luctus et. Vestibulum luctus suscipit nisi. Mauris pretium urna faucibus laoreet vehicula. Cras vel velit auctor, imperdiet diam vel, vestibulum urna. Sed scelerisque interdum vestibulum. Mauris id mi ante. Donec fermentum nisi vitae risus pharetra, eget pulvinar dolor faucibus. Sed sodales lacus ac ipsum aliquet pulvinar. Donec a tempor diam, eu blandit justo. Proin aliquet, nulla iaculis feugiat condimentum, dolor lectus tincidunt enim, id scelerisque tellus tellus eu ipsum. Maecenas porttitor, purus in auctor rhoncus, nunc justo hendrerit ex, sed pulvinar leo urna id purus. Vestibulum auctor sodales nulla, a pretium nibh commodo vitae. Duis eget tortor urna. Cras eget tempor nunc, vitae cursus nisi. Suspendisse molestie rutrum nisi ut vehicula.

Nam non diam mollis, commodo erat sit amet, aliquam ligula. Nunc vel leo vel arcu pellentesque sodales a non nisi. Donec sit amet turpis lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse ac libero quam. Donec pharetra mi molestie urna pretium viverra. Mauris in lorem vel urna molestie ornare. Morbi ultrices metus felis, et mattis tellus rhoncus et. Nulla a varius justo, vitae facilisis orci. Maecenas tincidunt turpis eget diam rutrum, ac porttitor sapien porttitor. Proin sed magna eget nunc fringilla vehicula. Phasellus aliquet tincidunt tortor, vitae hendrerit purus pellentesque vel. Cras sed condimentum elit. In hac habitasse platea dictumst.
""";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  late Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

  Widget aboutMeWidget(){
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1000) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/images/jo.jpeg"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "A propos de moi",
                        style: context.textTheme.headline2,
                      ),
                      Text(
                        "Ancien Boxeur professionnel et aujourd’hui préparateur mental certifié, coach professionnel ainsi que technicien en PNL.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Text(
                          "Je propose des séances de coaching en préparation mentale et développement personnel auprès d'un public varié allant du sportif, au manager, passant par l'entrepreneur ou l'étudiant."),
                    ],
                  ),
                ),
              )
            ],);
        }
        return Row(
          children: [
            Image.asset("assets/images/jo.jpeg"),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "A propos de moi",
                        style: context.textTheme.headline2,
                      ),
                      Text(
                        "Ancien Boxeur professionnel et aujourd’hui préparateur mental certifié, coach professionnel ainsi que technicien en PNL.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Text(
                          "Je propose des séances de coaching en préparation mentale et développement personnel auprès d'un public varié allant du sportif, au manager, passant par l'entrepreneur ou l'étudiant."),
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }


  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("A propos de moi"),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xff50545C),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  color: Color(0xff50545C),

                  child: Stack(
                    children: [
                      ClipPath(
                        clipper: DiagonalClipper(),
                        child: Image.asset("assets/images/ring.jpg"),
                      ),
                      Text("Test", style: TextStyle(shadows: [                        Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Colors.white,
                      ),]),)],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: aboutMeWidget(),
              ),
              Text("Nous conviendrons ensemble d'un lieu de rendez-vous."),
              Text(
                  "J'utilise diverses méthodes au cours de mes séances telles que la relaxation, l'imagerie mentale, la fixation d'objectifs, l'activation et la réorientation du discours interne."),
              Text(
                  "Vos objectifs peuvent être multiples et différents, comme par exemple la gestion du stress ou des émotions, le développement de la confiance en soi, de la concentration et de la relaxation, le tout dans une optique d'optimisation de la performance ou de bien-être."),
              Text("Les séances peuvent être individuelles comme collectives."),
              Text(
                  "Ces méthodes sont adaptables à tout niveau et dans tous les sports ainsi que le monde de l'entreprise."),
              Text(
                "06 64 03 52 78",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(blabla),
            ],
          ),
        ),
      ),
    );
  }
}
