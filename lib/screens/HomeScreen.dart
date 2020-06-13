import 'package:flutter/material.dart';
import 'package:reshipi/utilities/constants.dart';
import 'package:reshipi/components/AppBarWidget.dart';
import 'package:reshipi/components/BottomNavigation.dart';
import 'package:reshipi/components/Cards.dart';
import 'package:reshipi/components/FloatingButton.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'homeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.green,
      bottomNavigationBar: BottomNavigation(),
      floatingActionButton: FloatingButton(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180.0),
        child: AppBarWidget(
          title: 'Home',
//          icon: Icon(EvaIcons.home),
        ),
      ),
      body: SafeArea(
        top: false,
        child: Container(
          color: kWhiteColor,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      child: Container(
                        height: 300.0,
                        child: Container(color: Colors.transparent, child: Padding(
                          padding: const EdgeInsets.only(top: 250.0, left: 10.0),
                          child: Text('Lorem Ipsum dolor', style: TextStyle(color: kWhiteColor, fontSize: 22.0, fontWeight: FontWeight.bold)),
                        )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                            image: AssetImage('images/food3.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ),
                    SizedBox(height: kMediumHorizontalSpace),
                    Text('Most View', style: kSubHeaderTextStyle),
                    SizedBox(height: kMediumHorizontalSpace),
                    Row(
                      children: <Widget>[
                        Cards(
                          image: AssetImage('images/food3.jpg'),
                          title: 'Fried Orish',
                        ),
                        SizedBox(width: kSmallVerticalSpace),
                        Cards(
                          image: AssetImage('images/food3.jpg'),
                          title: 'Fried Orish',
                        ),
                        SizedBox(width: kSmallVerticalSpace),
                        Cards(
                          image: AssetImage('images/food3.jpg'),
                          title: 'Fried Orish',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//      bottomNavigationBar: BottomNavigation(),
//      floatingActionButton: fab,
    );
  }
}
