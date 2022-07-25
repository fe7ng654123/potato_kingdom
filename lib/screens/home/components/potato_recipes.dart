import 'package:flutter/material.dart';
import 'package:potato_kingdom/screens/details/details_screen.dart';

import '../../../constants.dart';
import 'package:potato_kingdom/screens/details/components/recipe_details.dart';

class PotatoRecipes extends StatelessWidget {
  const PotatoRecipes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecipeCard(
            image: "assets/images/potato frittata.webp",
            title: 'Asparagus & new potato frittata',
            press: () {
              GoDetail(context, 'potato frittata', 0);
            },
          ),
          RecipeCard(
            image: "assets/images/roasties.webp",
            title: 'Smashed roasties',
            press: () {
              GoDetail(context, 'roasties', 1);
            },
          ),
          RecipeCard(
            image: "assets/images/potato salad.webp",
            title: 'Red & white potato salad with pickled onions',
            press: () {
              GoDetail(context, 'potato salad', 2);
            },
          ),
        ],
      ),
    );
  }

  void GoDetail(BuildContext context, String title, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreenRecipe(title, index),
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  const RecipeCard({Key? key, this.image, this.press, this.title})
      : super(key: key);
  final String? image;
  final Function? press;
  final String? title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.8,
      // height: 185,
      constraints: BoxConstraints(maxWidth: 350),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: press as void Function()?,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 350,
              ),
              width: size.width * 0.8,
              height: 185,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image!),
                ),
              ),
            ),
          ),
          // Image.asset(image, fit: BoxFit.contain),
          GestureDetector(
            onTap: press as void Function()?,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Container(
                width: size.width * 0.8,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "$title",
                          style: Theme.of(context).textTheme.button),
                      // TextSpan(
                      //   text: 'Potatoes',
                      //   style: TextStyle(
                      //     color: kPrimaryColor.withOpacity(0.5),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
