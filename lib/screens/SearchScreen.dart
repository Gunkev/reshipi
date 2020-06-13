import 'package:flutter/material.dart';
import 'package:reshipi/components/BottomNavigation.dart';
import 'package:reshipi/components/FloatingButton.dart';
import 'package:reshipi/components/AppBarWidget.dart';
import 'package:reshipi/components/Cards.dart';
import 'package:reshipi/utilities/constants.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class SearchScreen extends StatefulWidget {
  static String id = 'searchScreen';
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      floatingActionButton: FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180.0),
        child: AppBarWidget(
          title: 'Search',
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    child: TextField(
                        autocorrect: true,
                        decoration: kTextFieldAuthDecoration.copyWith(
                          hintText: 'Search',
                          prefixIcon: Icon(null),
                          suffixIcon: CircleAvatar(
                            backgroundColor: kPinkColor,
                            radius: 25.0,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(EvaIcons.searchOutline, color: kWhiteColor),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: kPinkColor),
                              borderRadius: BorderRadius.all(Radius.circular(40.0))
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: kSecondaryPinkColor, width: 1),
                              borderRadius: BorderRadius.all(Radius.circular(40.0))
                          ),
                        ),
                    ),
                  ),
                  SizedBox(height: kMediumHorizontalSpace),
                  Text('Results', style: kSubHeaderTextStyle),
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
    );
  }
}
