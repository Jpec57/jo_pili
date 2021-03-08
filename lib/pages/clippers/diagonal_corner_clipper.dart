import 'package:flutter/cupertino.dart';

class DiagonalCornerClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double levelDifference = 30.0;
    Path path1 = new Path()
      ..lineTo(0.0, 0.0)
      ..lineTo(0.0, levelDifference)
      ..lineTo(size.width, 0.0);

    Path path2 = new Path()
      ..lineTo(0, 0)
      ..lineTo(-size.width, levelDifference)
      ..lineTo(0, levelDifference);
    path1.addPath(path2, Offset(size.width, size.height - levelDifference));
    return path1;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

}

