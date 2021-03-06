import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:reshipi/utilities/constants.dart';

class Cards extends StatelessWidget {
  const Cards({this.image, this.title, this.icon});
  final ImageProvider image;
  final title;
  final icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 150.0,
              width: 100.0,
              child: Container(
                color: Colors.transparent,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(icon,
                      color: Colors.yellow,
                      size: 20.0,
                    ),
                  ),
                  alignment: Alignment.topRight,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                image: DecorationImage(
                  image: image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(title, textAlign: TextAlign.left),
            Row(
              children: <Widget>[
                Icon(EvaIcons.heart, color: kPinkColor, size: kCardsIconSize,),
                Icon(EvaIcons.heart, color: kPinkColor, size: kCardsIconSize,),
                Icon(EvaIcons.heart, color: kPinkColor, size: kCardsIconSize,),
                Icon(EvaIcons.heartOutline, color: kPinkColor, size: kCardsIconSize,),
                Icon(EvaIcons.heartOutline, color: kPinkColor, size: kCardsIconSize,)
              ],
            )
          ],
        )
    );
  }
}