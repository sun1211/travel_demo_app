import 'package:flutter/material.dart';
import 'package:travel_demo_app/models/destination_model.dart';
import 'package:travel_demo_app/screen/details/detail_screen.dart';
import 'package:travel_demo_app/screen/home/components/detination_card.dart';

import 'header_destination_carousel.dart';

class DestiantionCarousel extends StatelessWidget {
  const DestiantionCarousel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderDestinationCarousel(),
        Container(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (context, index) => DestinationCard(
              itemIndex: index,
              destination: destinations[index],
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(
                            destination: destinations[index],
                          )),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
