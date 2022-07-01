import 'package:flutter/material.dart';
import 'package:potato_kingdom/constants.dart';

import 'potato_recipes.dart';
import 'header_with_seachbox.dart';
import 'potato_types.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Potato Types", press: () {}),
          PotatoTypes(),
          TitleWithMoreBtn(title: "Potato Recipes", press: () {}),
          PotatoRecipes(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
