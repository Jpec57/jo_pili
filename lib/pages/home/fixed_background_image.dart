part of 'home_page.dart';

Widget _renderBackgroundFixedImage(double width) {
  return Positioned(
    top: 0,
    // width: width,
    child: Container(
      color: AppColors.lightGrey,
      width: width,
      height: width * 0.25,
      child: Image.asset(
        "assets/images/paysage.jpeg",
        fit: BoxFit.fitWidth,
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
      Container(
        color: Colors.transparent,
        height: width * 0.20,
      ),
    ],
  );
}
