import 'package:flutter/material.dart';

import '../constants/colors.dart';

class AppLogo extends StatelessWidget {
  final String text;
  const AppLogo({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: kLogoColor,
      ),
      textAlign: TextAlign.left,
    );
  }
}
