import 'package:flutter/material.dart';

class newScreenNevigation {
  static void  navigateToNextScreen(BuildContext context,Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }
}