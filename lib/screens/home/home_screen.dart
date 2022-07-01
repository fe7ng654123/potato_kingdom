import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:potato_kingdom/components/my_bottom_nav_bar.dart';
import 'package:potato_kingdom/screens/home/components/body.dart';
import 'package:potato_kingdom/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      // bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text('Potato Kingdom'),
      centerTitle: true,
      elevation: 0,
      backgroundColor: kPrimaryColor,
      // leading: IconButton(
      //   icon: SvgPicture.asset("assets/icons/menu.svg"),
      //   onPressed: () {},
      // ),
    );
  }
}
