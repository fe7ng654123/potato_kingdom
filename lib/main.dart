import 'package:flutter/material.dart';
import 'package:potato_kingdom/constants.dart';
import 'package:potato_kingdom/screens/auth/login_screen.dart';
import 'package:potato_kingdom/screens/auth/register_screen.dart';
import 'package:potato_kingdom/screens/home/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Potato Kingdom',
      routes: ({
        'login': (context) => const MyLogin(),
        'register': (context) => const MyRegister(),
      }),
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
