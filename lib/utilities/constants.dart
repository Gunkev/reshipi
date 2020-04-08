import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

const kWhiteColor = Color(0xffffffff);
const kPinkColor = Color(0xfff56666);
const kSecondaryPinkColor = Color(0xbbf56666);
const kTertiaryPinkColor = Color(0x66f56666);
const kTransparentPinkColor = Color(0x22f56666);
const kBlueColor = Color(0xff3f51b5);
const kLogoText = Text("EAT SAVE",
  style: TextStyle(
      color: kWhiteColor,
      fontSize: 20.0,
      letterSpacing: 15.0,
      fontWeight: FontWeight.w900
  ),
);
const kMediumHorizontalSpace = 15.0;
const kBigHorizontalSpace = 40.0;
const kTextFieldAuthDecoration = InputDecoration(
    hintText: 'enter something',
    hintStyle: TextStyle(color: kSecondaryPinkColor),
    prefixIcon: Icon(EvaIcons.email, color: kSecondaryPinkColor,),
    contentPadding: EdgeInsets.all(16),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: kSecondaryPinkColor, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(6.0))
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: kPinkColor),
    )
);

