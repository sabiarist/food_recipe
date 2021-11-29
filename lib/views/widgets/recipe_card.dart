import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class RecipeCard extends StatelessWidget {
  RecipeCard({Key? key}) : super(key: key);

  final List<String> titles = [
    "Recipe 1 Title",
    "Recipe 2 Title",
    "Recipe 3 Title",
  ];
  final List<String> ratings = [
    "3.0",
    "2.5",
    "4.o",
  ];
  final List<String> cookTimes = [
    "30 min",
    "15 min",
    "10 min",
  ];


  final List<Widget> thumbnailUrls = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.black,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: VerticalCardPager(
                textStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                titles: titles,
                images: thumbnailUrls,
                onPageChanged: (page) {},
                align: ALIGN.CENTER,
                onSelectedItem: (index) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
