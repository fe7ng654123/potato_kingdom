import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({Key? key, required this.size, this.title})
      : super(key: key);

  final Size size;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          bottom: kDefaultPadding * 3, top: kDefaultPadding),
      child: SizedBox(
        height: size.height * 0.4,
        child: Container(
          height: size.height * 0.4,
          width: size.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 60,
                color: kPrimaryColor.withOpacity(0.29),
              ),
            ],
            image: DecorationImage(
              // alignment: Alignment.centerLeft,
              fit: BoxFit.cover,
              image: AssetImage("assets/images/${this.title}.jfif"),
            ),
          ),
        ),
      ),
    );
  }
}

class ImageRecipe extends StatelessWidget {
  const ImageRecipe({Key? key, required this.size, this.title})
      : super(key: key);

  final Size size;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          bottom: kDefaultPadding * 3, top: kDefaultPadding),
      child: SizedBox(
        height: size.height * 0.4,
        child: Container(
          height: size.height * 0.4,
          width: size.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 60,
                color: kPrimaryColor.withOpacity(0.29),
              ),
            ],
            image: DecorationImage(
              // alignment: Alignment.centerLeft,
              fit: BoxFit.cover,
              image: AssetImage("assets/images/${this.title}.webp"),
            ),
          ),
        ),
      ),
    );
  }
}
