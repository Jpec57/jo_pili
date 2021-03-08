import 'package:flutter/cupertino.dart';

class DiagonalClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    /*
        double levelDifference = 30.0;
    path.lineTo(0.0, levelDifference);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height - levelDifference);
    path.lineTo(size.width, 0.0);
    path.lineTo(0.0, levelDifference);
    path.close();
     */

    double levelDifference = 35.0;
    return new Path()
      ..lineTo(0.0, levelDifference)
      ..lineTo(0.0, size.height)
    ..lineTo(size.width, size.height - levelDifference)
    ..lineTo(size.width, 0.0)
    ..lineTo(0.0, levelDifference)
      ..fillType = PathFillType.evenOdd

    ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

}

