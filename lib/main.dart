import 'package:flutter/material.dart';
import 'package:travel_demo_app/constants.dart';
import 'package:travel_demo_app/screen/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kSecondaryColor,
        scaffoldBackgroundColor: kBackGroundColor,
      ),
      home: HomeScreen(),
    );
  }
}
