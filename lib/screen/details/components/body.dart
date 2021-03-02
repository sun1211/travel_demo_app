import 'package:flutter/material.dart';
import 'package:travel_demo_app/models/destination_model.dart';
import 'package:travel_demo_app/screen/details/components/detail_card.dart';
import 'package:travel_demo_app/size_config.dart';

import 'detail_cover_image.dart';

class Body extends StatelessWidget {
  final Destination destination;
  const Body({Key key, this.destination}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DetailCoverImage(destination: destination),
          Container(
            height: SizeConfig.isPortrait ? 400 : 200,
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              itemCount: destination.activities.length,
              itemBuilder: (context, index) => DetailCard(
                itemIndex: index,
                press: () {},
                activity: destination.activities[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
