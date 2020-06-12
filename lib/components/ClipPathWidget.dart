import 'package:flutter/material.dart';

class ClipPathWidget extends StatelessWidget {
  const ClipPathWidget({this.height,this.colour,this.clipper, this.child});
  final height;
  final colour;
  final CustomClipper clipper;
  final child;
  @override
  Widget build(BuildContext context) {

    return ClipPath(
      clipper: clipper,
      child: Container(
        child: child,
        width: double.infinity,
        height: height,
        color: colour,
      ),
    );
  }
}
