import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key,
    this.title,
    this.description,
  }) : super(key: key);

  final String title, description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 3),
      child: Row(
        children: <Widget>[
          Flexible(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "$title Potatoes\n\n",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: kTextColor, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: description,
                    style: TextStyle(
                      fontSize: 20,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          )
          // Spacer(),
          // Text(
          //   "\$$price",
          //   style: Theme.of(context)
          //       .textTheme
          //       .headline5
          //       .copyWith(color: kPrimaryColor),
          // )
        ],
      ),
    );
  }
}
