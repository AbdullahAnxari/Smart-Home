import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:home_control_ui/src/constants/colors.dart';

import '../constants/image_strings.dart';

class DeviceSwitcherWidget extends StatefulWidget {
  final Icon icon;
  final String titleText;
  final String deviceText;

  DeviceSwitcherWidget({
    required this.icon,
    required this.titleText,
    required this.deviceText,
  });

  @override
  State<DeviceSwitcherWidget> createState() => _DeviceSwitcherWidgetState();
}

class _DeviceSwitcherWidgetState extends State<DeviceSwitcherWidget> {
  bool isToggleButtonOn = false;

  void toggleButton(bool value) {
    setState(() {
      isToggleButtonOn = !isToggleButtonOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 116,
      width: 171,
      decoration: BoxDecoration(
        color: kLightGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              widget.icon,
              const SizedBox(height: 8.0),
              Text(
                widget.deviceText,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                widget.titleText,
                style: const TextStyle(fontSize: 16.0),
              ),
            ],
          ),
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
    );
  }
}
