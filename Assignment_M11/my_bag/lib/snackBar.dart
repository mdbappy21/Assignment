import 'package:flutter/material.dart';

class snackBar {
  static void mySnackBar(String massage,BuildContext context,{int duration=1000,Color? backgroundColor=Colors.green}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(textAlign: TextAlign.center,massage,),
      duration: Duration(milliseconds: duration), // Change duration here
      backgroundColor: backgroundColor,
    ));
  }
}