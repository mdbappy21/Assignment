import 'package:flutter/material.dart';
import 'package:photo_gallery_app/Screen/home_activity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Gallery App',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home:  const MyHomePage(),
    );
  }
}
