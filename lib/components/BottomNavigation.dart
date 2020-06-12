import 'package:flutter/material.dart';
import 'package:reshipi/utilities/constants.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: kPinkColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: kBlueColor,
      unselectedItemColor: kWhiteColor,
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
            icon: Icon(EvaIcons.grid,),
            title: Text("Category")
        ),
        BottomNavigationBarItem(
            icon: Icon(EvaIcons.search,),
            title: Text("Search")
        ),
//    BottomNavigationBarItem(icon: Icon(EvaIcons.plusCircle, color: Colors.transparent,),title: Text("")),
        BottomNavigationBarItem(
            icon: Icon(EvaIcons.list),
            title: Text("List")
        ),
        BottomNavigationBarItem(
            icon: Icon(EvaIcons.star),
            title: Text("Favorite")
        ),
      ],
      onTap: (index){
        setState((){
          _currentIndex = index;
        });
      },
    );
  }
}

//int currentIndex;
//final bottomNav =

//final fab = FloatingActionButton(backgroundColor:kPinkColor,child: Icon(EvaIcons.home, color: kWhiteColor, size: 35.0), onPressed: () {},);