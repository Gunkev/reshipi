import 'package:flutter/material.dart';
import 'package:reshipi/screens/SignInScreen.dart';
import 'package:reshipi/screens/LogInScreen.dart';
import 'package:reshipi/utilities/constants.dart';

void main() => runApp(Reshipi());

class Reshipi extends StatefulWidget {
  @override
  _ReshipiState createState() => _ReshipiState();
}

class _ReshipiState extends State<Reshipi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'a recipe application',
      theme: ThemeData(
        scaffoldBackgroundColor: kPinkColor,
        primaryColor: kPinkColor,
        accentColor: kPinkColor,
      ),
      color: kPinkColor,
      home: LogInScreen(),
    );
  }
}
