import 'package:flutter/material.dart';
import 'package:home_control_ui/src/screens/on_boarding_screen/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Smart home app',
      home: OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
