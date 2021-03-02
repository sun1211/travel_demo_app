import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar DetailAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: IconButton(
      icon: Icon(FontAwesomeIcons.arrowLeft),
      iconSize: 25.0,
      color: Colors.black,
      onPressed: () => Navigator.pop(context),
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.search),
        iconSize: 30.0,
        color: Colors.black,
        onPressed: () => Navigator.pop(context),
      ),
      IconButton(
        icon: Icon(FontAwesomeIcons.sortAmountDown),
        iconSize: 25.0,
        color: Colors.black,
        onPressed: () => Navigator.pop(context),
      ),
    ],
  );
}
