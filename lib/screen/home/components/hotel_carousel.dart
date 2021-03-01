import 'package:flutter/material.dart';
import 'package:travel_demo_app/models/hotel_model.dart';
import 'package:travel_demo_app/screen/home/components/hotel_card.dart';

import 'header_hotel_carousel.dart';

class HotelCarousel extends StatelessWidget {
  const HotelCarousel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderHotelCarousel(),
        Container(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hotels.length,
            itemBuilder: (context, index) => HotelCard(
              itemIndex: index,
              hotel: hotels[index],
              press: () {
                print("Chose Hotel ${hotels[index].name}");
              },
            ),
          ),
        )
      ],
    );
  }
}
