import 'package:flutter/material.dart';

//top clipper
class TopWaveClipper extends CustomClipper<Path> {
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 120);

    var firstControlPoint = Offset(size.width / 5, size.height);
    var firstEndPoint = Offset(size.width / 1.9, size.height - 80.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width * 0.90, size.height - 180.0);
    var secondEndPoint = Offset(size.width + 10, size.height - 80);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

//appbar clipper
class AppBarWaveClipper extends CustomClipper<Path> {
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 100);

    var firstControlPoint = Offset(size.width/ 6, size.height - 55);
    var firstEndPoint = Offset(size.width / 2.1, size.height - 84.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width * 0.90, size.height - 135.0);
    var secondEndPoint = Offset(size.width + 10, size.height - 80);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

//bottom clipper
class BottomWaveClipper extends CustomClipper<Path> {
  Path getClip(Size size) {
    final path = Path();

    var firstControlPoint = Offset(size.width / 20, size.height / 1.1);
    var firstEndPoint = Offset(size.width / 2, size.height / 2.5);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width * .9, size.height - 130.0);
    var secondEndPoint = Offset(size.width, size.height - 80);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 130.0);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}