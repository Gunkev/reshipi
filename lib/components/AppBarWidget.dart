import 'package:flutter/material.dart';
import 'package:reshipi/utilities/constants.dart';
import 'package:reshipi/components/TopWaveClipper.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:reshipi/components/ClipPathWidget.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({this.title});
  final title;

  @override
  Widget build(BuildContext context) {

    return  Stack(
      children: <Widget>[
        ClipPathWidget(
          clipper: AppBarWaveClipper(),
          height: 202.0,
          colour: kTertiaryPinkColor,
        ),
        ClipPathWidget(
          clipper: AppBarWaveClipper(),
          height: 196.0,
          colour: kSecondaryPinkColor,
        ),
        ClipPathWidget(
          clipper: AppBarWaveClipper(),
          height: 190.0,
          child: Container(
            color: kPinkColor,
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(title.toString(), style: TextStyle(color: kWhiteColor)),
              leading: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: CircleAvatar(
                  backgroundColor: kWhiteColor,
                  radius: 50.0,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(EvaIcons.menu, color: kPinkColor)
                  ),
                ),
              ),
              actions: <Widget>[
                IconButton(
                  color: kPinkColor,
                  icon: Icon(EvaIcons.moreVerticalOutline, color: kWhiteColor),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}