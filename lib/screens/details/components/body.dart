import 'package:flutter/material.dart';
import 'package:potato_kingdom/constants.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';
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
          ImageAndIcons(size: size),
          TitleAndPrice(title: this.title, country: descriptions[this.title]),
          SizedBox(height: kDefaultPadding),
          // Row(
          //   children: <Widget>[
          //     SizedBox(
          //       width: size.width / 2,
          //       height: 84,
          //       child: FlatButton(
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.only(
          //             topRight: Radius.circular(20),
          //           ),
          //         ),
          //         color: kPrimaryColor,
          //         onPressed: () {},
          //         child: Text(
          //           "Buy Now",
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 16,
          //           ),
          //         ),
          //       ),
          //     ),
          //     Expanded(
          //       child: FlatButton(
          //         onPressed: () {},
          //         child: Text("Description"),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
