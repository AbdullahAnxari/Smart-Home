import 'package:flutter/material.dart';
import 'package:home_control_ui/src/constants/colors.dart';

class CardWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final String subtitle;
  final bool isSelected;

  const CardWidget({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subtitle,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    final Color containerColor =
        isSelected ? const Color(0xFF34E0A1) : Colors.white;
    return Container(
      padding: const EdgeInsets.all(5),
      width: 120,
      height: 50,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: kWhiteColor,
            ),
            child: Center(
              child: Image(
                image: AssetImage(iconPath),
                width: 16,
                height: 16,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: kBlackColour,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: kBlackColour,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
