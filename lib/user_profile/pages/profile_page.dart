import 'dart:async';

import 'package:flutter/material.dart';
import 'package:potato_kingdom/constants.dart';
import './edit_description.dart';
import './edit_email.dart';
import './edit_image.dart';
import './edit_name.dart';
import './edit_phone.dart';
import '../user/user.dart';
import '../widgets/display_image_widget.dart';
import '../user/user_data.dart';

// This class handles the Page to dispaly the user's info on the "Edit Profile" Screen
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserData.myUser;

    return Theme(
      data: ThemeData(
        primaryColor: Colors.black,
        fontFamily: 'Roboto',
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shadowColor: Colors.grey,
                elevation: 20,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(0.0))))),
        inputDecorationTheme: InputDecorationTheme(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(0.0))),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            alignment: Alignment.centerLeft,
            primary: Colors.black,
          ),
        ),
        textTheme: TextTheme(),
      ),
      child: Scaffold(
        body: Column(
          children: [
            AppBar(
              iconTheme: IconThemeData(
                  color: Colors
                      .black), // set backbutton color here which will reflect in all screens.
              leading: BackButton(
                onPressed: () => Navigator.pop(context),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            Center(
                child: Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: kPrimaryColor,
                      ),
                    ))),
            InkWell(
                onTap: () {
                  navigateSecondPage(EditImagePage());
                },
                child: DisplayImage(
                  imagePath: user.image,
                  onPressed: () {},
                )),
            buildUserInfoDisplay(user.name, 'Name', EditNameFormPage()),
            buildUserInfoDisplay(user.phone, 'Phone', EditPhoneFormPage()),
            buildUserInfoDisplay(user.email, 'Email', EditEmailFormPage()),
            Expanded(
              child: buildAbout(user),
              flex: 4,
            )
          ],
        ),
      ),
    );
  }

  // Widget builds the display item with the proper formatting to display the user's info
  Widget buildUserInfoDisplay(String getValue, String title, Widget editPage) =>
      Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                  width: 350,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ))),
                  child: Row(children: [
                    Expanded(
                        child: TextButton(
                            onPressed: () {
                              navigateSecondPage(editPage);
                            },
                            style: TextButton.styleFrom(
                              alignment: Alignment.centerLeft,
                              // primary: Colors.black,
                            ),
                            child: Text(
                              getValue,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.4,
                                // color: Colors.black,
                              ),
                            ))),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.grey,
                      size: 40.0,
                    )
                  ]))
            ],
          ));

  // Widget builds the About Me Section
  Widget buildAbout(User user) => Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tell Us About Yourself',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 1),
          Container(
              width: 350,
              height: 200,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Colors.grey,
                width: 1,
              ))),
              child: Row(children: [
                Expanded(
                    child: TextButton(
                        onPressed: () {
                          navigateSecondPage(EditDescriptionFormPage());
                        },
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  user.aboutMeDescription,
                                  style: TextStyle(
                                    fontSize: 16,
                                    height: 1.4,
                                    // color: Colors.black,
                                  ),
                                ))))),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                  size: 40.0,
                )
              ]))
        ],
      ));

  // Refrshes the Page after updating user info.
  FutureOr onGoBack(dynamic value) {
    setState(() {});
  }

  // Handles navigation and prompts refresh.
  void navigateSecondPage(Widget editForm) {
    Route route = MaterialPageRoute(builder: (context) => editForm);
    Navigator.push(context, route).then(onGoBack);
  }
}
