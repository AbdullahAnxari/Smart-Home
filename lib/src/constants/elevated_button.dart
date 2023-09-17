import 'package:flutter/material.dart';
import 'package:home_control_ui/src/constants/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color buttonColor;
  final Color textColor;
  final double elevation;

  const CustomElevatedButton({
    required this.onPressed,
    required this.text,
    this.buttonColor = kkButtonColor,
    this.textColor = Colors.white,
    this.elevation = 4.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 127,
        height: 48,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius:
              BorderRadius.circular(8), // Add rounded corners if desired
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
