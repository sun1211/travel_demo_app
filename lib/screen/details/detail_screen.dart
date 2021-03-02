import 'package:flutter/material.dart';
import 'package:travel_demo_app/models/destination_model.dart';
import 'package:travel_demo_app/screen/details/components/body.dart';

import 'components/app_bar.dart';

class DetailScreen extends StatelessWidget {
  final Destination destination;
  const DetailScreen({Key key, this.destination}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: DetailAppBar(context),
      body: Body(
        destination: destination,
      ),
    );
  }
}
