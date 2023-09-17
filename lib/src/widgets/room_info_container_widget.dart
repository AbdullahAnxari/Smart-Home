import 'package:flutter/material.dart';
import 'package:home_control_ui/src/constants/colors.dart';

import '../constants/image_strings.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class RoomInfoContainer extends StatelessWidget {
  final String backgroundImagePath;
  final String headingText;
  final String subheadingText;
  final List<String> iconPaths;

  RoomInfoContainer({
    required this.backgroundImagePath,
    required this.headingText,
    required this.subheadingText,
    required this.iconPaths,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 223.0,
      decoration: BoxDecoration(color: kLightGrey),
      child: Stack(
        children: [
          // IMAGE
          Positioned(
            child: Image(
              image: AssetImage(backgroundImagePath),
              width: double.infinity,
            ),
          ),
          // * Heading
          Positioned(
            top: 25,
            left: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  headingText,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                // SizedBox(height: 10),
                Text(
                  subheadingText,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // * Icons images
          Positioned(
            top: 180, // 1 inch (40 pixels) below the image
            left: 30, // Adjust the left position of the icons as needed
            child: Row(
              children: iconPaths
                  .map((iconPath) => Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Image(
                          image: AssetImage(iconPath),
                          height: 20,
                          width: 20,
                          fit: BoxFit.cover,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
