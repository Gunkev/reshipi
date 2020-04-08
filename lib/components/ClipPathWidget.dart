import 'package:flutter/material.dart';
import 'package:reshipi/components/WaveClipper.dart';

class ClipPathWidget extends StatelessWidget {
  const ClipPathWidget({this.height,this.colour});
  final height;
  final colour;
  @override
  Widget build(BuildContext context) {

    return ClipPath(
      clipper: WaveClipper(),
      child: Container(
        child: Column(),
        width: double.infinity,
        height: height,
        color: colour,
      ),
    );
  }
}
