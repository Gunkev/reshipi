import 'package:flutter/material.dart';
import 'package:reshipi/utilities/constants.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:reshipi/components/WaveClipper.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  ClipPath(
                    clipper: WaveClipper(),
                    child: Container(
                      child: Column(),
                      width: double.infinity,
                      height: 300,
                      color: kPinkColor,
                    ),
                  ),
                  ClipPath(
                    clipper: WaveClipper(),
                    child: Container(
                      child: Column(),
                      width: double.infinity,
                      height: 310,
                      color: kSecondaryPinkColor,
                    ),
                  ),
                  ClipPathWidget(),
                  ClipPath(
                    clipper: WaveClipper(),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Column(
                          children: <Widget>[
                            Text("EAT SAVE",
                            style: TextStyle(
                              color: kWhiteColor,
                              fontSize: 20.0,
                              letterSpacing: 15.0,
                              fontWeight: FontWeight.w900
                            ),
                            ),
                            SizedBox(height: 20.0),
                            Icon(
                              EvaIcons.pieChart,
                              size: 100.0,
                              color: kWhiteColor,
                            )
                          ],
                        ),
                      ),
                      width: double.infinity,
                      height: 330,
                      color: kTransparentPinkColor,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: TextStyle(color: kSecondaryPinkColor),
                          prefixIcon: Icon(EvaIcons.person, color: kSecondaryPinkColor,),
                          contentPadding: EdgeInsets.all(16),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: kSecondaryPinkColor, width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(6.0))
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: kPinkColor),
                          )
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      child: TextField(
                        autocorrect: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: 'Email',
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
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      child: TextField(
                        autocorrect: true,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'password',
                            hintStyle: TextStyle(color: kSecondaryPinkColor),
                            prefixIcon: Icon(EvaIcons.lock, color: kSecondaryPinkColor,),
                            contentPadding: EdgeInsets.all(16),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: kSecondaryPinkColor, width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(6.0))
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: kPinkColor),
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    MaterialButton(
                      onPressed: () {},
                      padding: EdgeInsets.all(20.0),
                      elevation: 3,
                      color: kPinkColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                      child: Text('Sign in',
                        style: TextStyle(color: kWhiteColor, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Text('or sign in with',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: kBlueColor,)
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      children: <Widget>[
                        MaterialButton(
                          onPressed: () {},
                          minWidth: 155.0,
                          padding: EdgeInsets.only(top:12.0, bottom: 12.0, left: 20.0, right: 20.0),
                          elevation: 3,
                          color: Colors.red,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                          child: Row(
                            children: <Widget>[
                              Icon(EvaIcons.google, color: kWhiteColor),
                              Text('oogle',
                                style: TextStyle(color: kWhiteColor, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 15.0),
                        MaterialButton(
                          onPressed: () {},
                          minWidth: 155.0,
                          padding: EdgeInsets.only(top:12.0, bottom: 12.0, left: 20.0, right: 20.0),
                          elevation: 3,
                          color: kBlueColor,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                          child: Row(
                            children: <Widget>[
                              Icon(EvaIcons.facebook, color: kWhiteColor),
                              Text('acebook',
                                style: TextStyle(color: kWhiteColor, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ],
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

class ClipPathWidget extends StatelessWidget {
  const ClipPathWidget({this.height});
  final height;
  @override
  Widget build(BuildContext context) {

    return ClipPath(
      clipper: WaveClipper(),
      child: Container(
        child: Column(),
        width: double.infinity,
        height: 320,
        color: kTertiaryPinkColor,
      ),
    );
  }
}

