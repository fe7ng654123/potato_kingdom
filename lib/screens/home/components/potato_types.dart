import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potato_kingdom/screens/details/details_screen.dart';

import '../../../constants.dart';

class PotatoTypes extends StatefulWidget {
  const PotatoTypes({
    Key? key,
  }) : super(key: key);

  @override
  State<PotatoTypes> createState() => _PotatoTypesState();
}

class _PotatoTypesState extends State<PotatoTypes> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/images/Russet.jfif",
            title: "Russet",
            price: 440,
            press: () {
              GoDetail(context, "Russet");
            },
          ),
          RecomendPlantCard(
            image: "assets/images/Sweet.jfif",
            title: "Sweet",
            price: 44,
            press: () {
              GoDetail(context, "Sweet");
            },
          ),
          RecomendPlantCard(
            image: "assets/images/Red.jfif",
            title: "Red",
            price: 440,
            press: () {
              GoDetail(context, "Red");
            },
          ),
          RecomendPlantCard(
            image: "assets/images/White.jfif",
            title: "White",
            price: 440,
            press: () {
              GoDetail(context, "White");
            },
          ),
          RecomendPlantCard(
            image: "assets/images/Fingerling.jfif",
            title: "Fingerling",
            price: 440,
            press: () {
              GoDetail(context, "Fingerling");
            },
          ),
          RecomendPlantCard(
            image: "assets/images/Yellow.jfif",
            title: "Yellow",
            price: 440,
            press: () {
              GoDetail(context, "Yellow");
            },
          ),
          RecomendPlantCard(
            image: "assets/images/Purple.jfif",
            title: "Purple",
            price: 440,
            press: () {
              GoDetail(context, "Purple");
            },
          ),
          RecomendPlantCard(
            image: "assets/images/Petite.jfif",
            title: "Petite",
            price: 440,
            press: () {
              GoDetail(context, "Petite");
            },
          ),
        ],
      ),
    );
  }

  void GoDetail(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(title),
      ),
    );
  }
}

class RecomendPlantCard extends StatefulWidget {
  const RecomendPlantCard({
    Key? key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String? image, title, country;
  final int? price;
  final Function? press;

  @override
  State<RecomendPlantCard> createState() => _RecomendPlantCardState();
}

class _RecomendPlantCardState extends State<RecomendPlantCard> {
  Color _iconColor = Colors.grey;
  IconData _iconAddFavorite = Icons.favorite_border;

  void toggleFavorite() {
    (_iconColor != Colors.red)
        ? {_iconColor = Colors.red, _iconAddFavorite = Icons.favorite}
        : {_iconColor = Colors.grey, _iconAddFavorite = Icons.favorite_border};
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      constraints: BoxConstraints(maxWidth: 350),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: widget.press as void Function()?,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.asset(widget.image!),
            ),
          ),
          // Image.asset(image, fit: BoxFit.contain),
          GestureDetector(
            onTap: widget.press as void Function()?,
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
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "${widget.title}\n",
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: 'Potatoes',
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    // icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
                    icon: Icon(
                      _iconAddFavorite,
                      color: _iconColor,
                    ),
                    onPressed: () {
                      setState(() {
                        toggleFavorite();
                      });
                    },
                    splashRadius: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
