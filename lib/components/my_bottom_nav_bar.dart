import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:potato_kingdom/user_profile/pages/profile_page.dart';
import '../user_profile/profile.dart';

import '../constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  void GoProfilePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProfilePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        // bottom: kDefaultPadding,
      ),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // IconButton(
          //   icon: SvgPicture.asset("assets/icons/flower.svg"),
          //   onPressed: () {},
          // ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
            onPressed: () {},
            splashRadius: 30,
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/user-icon.svg"),
            onPressed: () {
              GoProfilePage(context);
            },
            splashRadius: 30,
          ),
        ],
      ),
    );
  }
}
