import 'package:flutter/material.dart';
import 'package:travel_demo_app/screen/home/components/destination_carousel.dart';
import 'package:travel_demo_app/screen/home/components/hotel_carousel.dart';

import 'list_icon.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 30.0),
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 120.0),
            child: Text(
              'What would you like to find?',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          ListIcon(),
          DestiantionCarousel(),
          SizedBox(height: 20.0),
          HotelCarousel(),
        ],
      ),
    );
  }
}
