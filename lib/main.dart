import 'package:flutter/material.dart';
import 'package:reshipi/screens/HomeScreen.dart';
import 'package:reshipi/screens/SignUpScreen.dart';
import 'package:reshipi/screens/LogInScreen.dart';
import 'package:reshipi/utilities/constants.dart';
import 'package:reshipi/screens/CategoryScreen.dart';

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
        primaryColor: kPrimaryColor,
      ),
      color: kPinkColor,
      initialRoute: SignUpScreen.id,
      routes: {
        SignUpScreen.id: (context)=> SignUpScreen(),
        LogInScreen.id: (context)=> LogInScreen(),
        HomeScreen.id: (context)=> HomeScreen(),
        CategoryScreen.id: (context)=> CategoryScreen(),
      },
    );
  }
}
