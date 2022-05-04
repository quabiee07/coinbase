import 'package:calorie_tracker/pages/home_screen.dart';
import 'package:calorie_tracker/pages/splash_screen.dart';
import 'package:calorie_tracker/widget/button.dart';
import 'package:calorie_tracker/res/colors.dart';
import 'package:calorie_tracker/widget/navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coinbase',
      home: SplashScreen(),
    );
  }
}
