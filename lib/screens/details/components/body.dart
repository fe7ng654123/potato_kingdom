import 'package:flutter/material.dart';
import 'package:potato_kingdom/constants.dart';
import 'package:potato_kingdom/screens/details/components/recipe_details.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';
import 'recipe_and_method.dart';
import './type_descriptions.dart';

class Body extends StatelessWidget {
  const Body(this.title);
  final title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size, title: this.title),
          TitleAndPrice(
              title: this.title, description: descriptions[this.title]),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}

class BodyRecipe extends StatelessWidget {
  const BodyRecipe(this.title, this.index);
  final title;
  final index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // ImageAndIcons(size: size, title: this.title),
          ImageRecipe(size: size, title: this.title),
          // TitleAndPrice(
          //     title: this.title, description: descriptions[this.title]),
          RecipeMethod(
              title: details[index]['name'],
              description: details[index]['method']),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
