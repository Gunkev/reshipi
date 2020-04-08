import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reshipi/utilities/constants.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({this.onPress, this.width, this.colour, this.icon, this.text, this.padding, this.elevation});

  final onPress;
  final width;
  final colour;
  final icon;
  final text;
  final padding;
  final elevation;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,
      minWidth: width,
      padding: EdgeInsets.only(top:12.0, bottom: 12.0, left: 20.0, right: 20.0),
      elevation: 3,
      color: colour,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: <Widget>[
          Icon(icon, color: kWhiteColor),
          Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(color: kWhiteColor, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

