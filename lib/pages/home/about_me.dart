part of 'home_page.dart';

Widget _aboutMeTextWidget(BuildContext context, Animation<Offset> offset) {
  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                "A propos de moi",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, fontFamily: "Futura"),
              ),
            ),
            Text(
              "Ancien Boxeur professionnel et aujourd’hui préparateur mental certifié, coach professionnel ainsi que technicien en PNL.",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                  "Je propose des séances de coaching en préparation mentale et développement personnel auprès d'un public varié allant du sportif, au manager, passant par l'entrepreneur ou l'étudiant."),
            ),
          ],
        ),
      ));
  // return SlideTransition(
  //   position: offset,
  //   child: ,
  // );
}

Widget _aboutMePicture() {
  return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        "assets/images/jo.jpeg",
        width: 400,
      ));
}

Widget aboutMeWidget(BuildContext context, Animation<Offset> offset) {
  return LayoutBuilder(
    builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _aboutMePicture(),
            _aboutMeTextWidget(context, offset),
          ],
        );
      }
      return Row(
        children: [
          _aboutMePicture(),
          Expanded(
            child: _aboutMeTextWidget(context, offset),
          )
        ],
      );
    },
  );
}
