import 'package:flutter/material.dart';
import 'package:reshipi/utilities/constants.dart';
import 'package:reshipi/screens/HomeScreen.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor:kPinkColor,
      child: Icon(
          Icons.home,
          size: 35.0),
      onPressed: () {Navigator.pushNamed(context, HomeScreen.id);},
    );
  }
}
