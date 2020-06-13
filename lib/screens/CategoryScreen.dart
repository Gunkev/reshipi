import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:reshipi/utilities/constants.dart';
import 'package:reshipi/components/AppBarWidget.dart';
import 'package:reshipi/components/BottomNavigation.dart';
import 'package:reshipi/components/Cards.dart';
import 'package:reshipi/components/FloatingButton.dart';


class CategoryScreen extends StatefulWidget {
  static String id = 'categoryScreen';
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.green,
      bottomNavigationBar: BottomNavigation(),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180.0),
        child: AppBarWidget(
          title: 'Category',
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
                    Text('Drinks', style: kSubHeaderTextStyle),
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
                    ),
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
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text('Food', style: kSubHeaderTextStyle),
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
                    ),
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
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text('Fruits', style: kSubHeaderTextStyle),
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

