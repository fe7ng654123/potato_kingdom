import 'package:flutter/material.dart';
import 'package:potato_kingdom/constants.dart';
import 'package:potato_kingdom/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(this.title);
  final title;

  @override
  Widget build(BuildContext context) {
    // print(this.title);
    return Scaffold(
      appBar: AppBar(backgroundColor: kPrimaryColor),
      body: Body(this.title),
    );
  }
}

class DetailsScreenRecipe extends StatelessWidget {
  const DetailsScreenRecipe(this.title, this.index);
  final title;
  final index;

  @override
  Widget build(BuildContext context) {
    // print(this.title);
    return Scaffold(
      appBar: AppBar(backgroundColor: kPrimaryColor),
      body: BodyRecipe(this.title, this.index),
    );
  }
}
