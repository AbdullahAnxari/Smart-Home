import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:home_control_ui/src/constants/colors.dart';

import '../constants/image_strings.dart';

class ScenesRowWidget extends StatefulWidget {
  final Icon icon;
  final String labelText;

  ScenesRowWidget({
    required this.icon,
    required this.labelText,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ScenesRowWidgetState createState() => _ScenesRowWidgetState();
}

class _ScenesRowWidgetState extends State<ScenesRowWidget> {
  bool isToggleButtonOn = false;

  void toggleButton(bool value) {
    setState(() {
      isToggleButtonOn = !isToggleButtonOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      tileColor: Colors.grey[200],
      // Grey background color
      contentPadding: EdgeInsets.all(16.0),
      // Adjust padding as needed
      leading: Icon(Icons.wb_sunny),
      // Replace with your desired icon
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Morning SCENE',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: 10), // Add spacing between text and switch
          FlutterSwitch(
            height: 20.0,
            width: 40.0,
            padding: 2.0,
            toggleSize: 18.0,
            borderRadius: 10.0,
            activeColor: kkButtonColor,
            inactiveColor: kBlackColour,
            activeIcon: const Image(image: AssetImage(kActiveIcon)),
            value: isToggleButtonOn,
            onToggle: (value) {
              setState(() {
                isToggleButtonOn = value;
              });
            },
          ),
        ],
      ),
      // trailing: Switch(
      //   value: isToggleButtonOn,
      //   onChanged: toggleButton,
      //   activeColor: const Color(0xFF34E0A1),
      // ),
    );
  }
}
