import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hafid Ardiansyah',
      home: HomeScreen(),
    );
  }
}
