import 'package:flutter/material.dart';

class drawerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    // final path = Path();
    // path.lineTo(size.width * 0.6, 0);
    // path.quadraticBezierTo(size.width * 0.65, size.height * 0.1,
    //     size.width * 0.6, size.height * 0.2);
    // path.quadraticBezierTo(size.width * 0.5, size.height * 0.4,
    //     size.width * 0.6, size.height * 0.6);
    // path.quadraticBezierTo(size.width * 0.65, size.height * 0.7,
    //     size.width * 0.6, size.height * 0.8);
    // path.quadraticBezierTo(
    //     size.width * 0.5, size.height * 0.9, size.width * 0.6, size.height);
    // path.lineTo(0, size.height);
    // path.close();
    // return path;
//
//
//--------- loop wave

    // path.lineTo(size.width * 0.8, 0);

    // double waveHeight = size.height * 0.15;
    // double waveWidth = size.width * 0.1;

    // for (double i = 0; i < size.height; i += waveHeight) {
    //   path.relativeQuadraticBezierTo(-waveWidth, waveHeight / 2, 0, waveHeight);
    //   path.relativeQuadraticBezierTo(waveWidth, waveHeight / 2, 0, waveHeight);
    // }

    // path.lineTo(size.width * 0.8, size.height);
    // path.lineTo(0, size.height);
    // path.close();

    // return path;
    ///-------------------------- more smooth
    ///
    Path path = Path();
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(
        size.width - 70, size.height / 4, size.width - 35, size.height / 2);
    path.quadraticBezierTo(
        size.width, 3 / 4 * size.height, size.width - 70, size.height);
    path.lineTo(0, size.height);
    return path;

    //throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
    //throw UnimplementedError();
  }
}
