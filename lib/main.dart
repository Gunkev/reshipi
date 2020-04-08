import 'package:flutter/material.dart';

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
        scaffoldBackgroundColor: Color(0xfffffffff),
        primaryColor: Color(),
      ),
    );
  }
}
