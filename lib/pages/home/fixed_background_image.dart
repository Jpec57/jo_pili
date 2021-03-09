part of 'home_page.dart';

Widget _renderBackgroundFixedImage(double width) {
  return Positioned(
    top: -0.05 * width,
    child: Container(
      height: width / 2,
      child: AspectRatio(
        aspectRatio: 2 / 1,
        child: Image.asset(
          "assets/images/paysage.jpeg",
          fit: BoxFit.fitWidth,
        ),
      ),
    ),
  );
}

Widget _renderBackgroundClipper(Color backgroundColor, double width) {
  return Column(
    children: [
      Container(
        height: 0.05 * width,
        width: width,
        color: backgroundColor,
      ),
      ClipPath(
        clipBehavior: Clip.antiAlias,
        clipper: DiagonalCornerClipper(),
        child: Container(
          height: 300,
          width: width,
          decoration: BoxDecoration(color: backgroundColor),
        ),
      )
    ],
  );
}
