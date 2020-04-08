import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reshipi/utilities/constants.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:reshipi/components/WaveClipper.dart';
import 'package:reshipi/components/ClipPathWidget.dart';
import 'package:reshipi/components/ReusableButtons.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPinkColor,
      body: SafeArea(
        child: Container(
          color: kWhiteColor,
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipPathWidget(
                    height: 300.0,
                    colour: kPinkColor,
                  ),
                  ClipPathWidget(
                    height: 310.0,
                    colour: kSecondaryPinkColor,
                  ),
                  ClipPathWidget(
                    height: 320.0,
                    colour: kTertiaryPinkColor,
                  ),
                  ClipPath(
                    clipper: WaveClipper(),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Column(
                          children: <Widget>[
                            kLogoText,
                            SizedBox(height: 20.0),
                            Icon(EvaIcons.pieChart, size: 100.0, color: kWhiteColor)
                          ],
                        ),
                      ),
                      width: double.infinity,
                      height: 330.0,
                      color: kTransparentPinkColor,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      child: TextField(
                          autocorrect: true,
                          decoration: kTextFieldAuthDecoration.copyWith(hintText: 'Username', prefixIcon: Icon(EvaIcons.person, color: kSecondaryPinkColor,))
                      ),
                    ),
                    SizedBox(height: kMediumHorizontalSpace),
                    Container(
                      child: TextField(
                          autocorrect: true,
                          obscureText: true,
                          decoration: kTextFieldAuthDecoration.copyWith(hintText: 'password', prefixIcon: Icon(EvaIcons.lock, color: kSecondaryPinkColor))
                      ),
                    ),
                    SizedBox(height: kBigHorizontalSpace),
                    ReusableButton(
                      onPress: () {},
                      padding: EdgeInsets.all(20.0),
                      text: 'Log In',
                      colour: kPinkColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
