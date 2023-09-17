import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProfileNavBar extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  ProfileNavBar({
    required this.title,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        tileColor: kLightGrey,
        onTap: onTap,
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.withOpacity(0.1),
          ),
          child: Icon(
            icon,
            size: 18,
            color: kBlackColour,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(color: kBlackColour),
        ),
        trailing: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.grey.withOpacity(0.1),
            ),
            child: Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: kBlackColour,
            )),
      ),
    );
  }
}
