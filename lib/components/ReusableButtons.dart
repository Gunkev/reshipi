import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reshipi/utilities/constants.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({this.onPress, this.colour, this.icon, this.text, this.padding, this.elevation});

  final onPress;
  final colour;
  final icon;
  final text;
  final padding;
  final elevation;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      elevation: 3,
      color: colour,
      padding: padding,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, color: kWhiteColor),
          Text(text,
            style: TextStyle(color: kWhiteColor, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

