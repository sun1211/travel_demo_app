import 'package:flutter/material.dart';
import 'package:travel_demo_app/screen/home/components/body.dart';

import 'components/my_bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: MyBottomNavigation(),
    );
  }
}
