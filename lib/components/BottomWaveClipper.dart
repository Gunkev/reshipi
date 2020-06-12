import 'package:flutter/material.dart';

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