import 'package:flutter/material.dart';
import 'package:reshipi/components/Cards.dart';
import 'package:reshipi/utilities/constants.dart';
import 'package:reshipi/components/BottomNavigation.dart';
import 'package:reshipi/components/FloatingButton.dart';
import 'package:reshipi/components/AppBarWidget.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class RecipeListScreen extends StatefulWidget {
  static String id = 'recipeListScreen';
  @override
  _RecipeListScreenState createState() => _RecipeListScreenState();
}

class _RecipeListScreenState extends State<RecipeListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180.0),
        child: AppBarWidget(
          title: 'List',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 20.0),
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Cards(
                    image: AssetImage('images/food3.jpg'),
                    title: 'Fried Orish',
                    icon: EvaIcons.star,
                  ),
                  SizedBox(width: kSmallVerticalSpace),
                  Cards(
                    image: AssetImage('images/food3.jpg'),
                    title: 'Fried Orish',
                    icon: EvaIcons.starOutline,
                  ),
                  SizedBox(width: kSmallVerticalSpace),
                  Cards(
                    image: AssetImage('images/food3.jpg'),
                    title: 'Fried Orish',
                    icon: EvaIcons.starOutline,
                  ),
                ],
              ),
              SizedBox(height: kMediumHorizontalSpace),
              Row(
                children: <Widget>[
                  Cards(
                    image: AssetImage('images/food3.jpg'),
                    title: 'Fried Orish',
                    icon: EvaIcons.star,
                  ),
                  SizedBox(width: kSmallVerticalSpace),
                  Cards(
                    image: AssetImage('images/food3.jpg'),
                    title: 'Fried Orish',
                    icon: EvaIcons.star,
                  ),
                  SizedBox(width: kSmallVerticalSpace),
                  Cards(
                    image: AssetImage('images/food3.jpg'),
                    title: 'Fried Orish',
                    icon: EvaIcons.starOutline,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
