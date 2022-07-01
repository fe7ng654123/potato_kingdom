import 'package:flutter/material.dart';
import 'package:potato_kingdom/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(this.title);
  final title;

  @override
  Widget build(BuildContext context) {
    print(this.title);
    return Scaffold(
      body: Body(this.title),
    );
  }
}
