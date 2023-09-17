import 'package:flutter/material.dart';
import 'package:home_control_ui/src/constants/colors.dart';
import 'package:home_control_ui/src/constants/image_strings.dart';

class AirConditioner extends StatefulWidget {
  final String roomName;
  const AirConditioner({super.key, required this.roomName});

  @override
  State<AirConditioner> createState() => _AirConditionerState();
}

class _AirConditionerState extends State<AirConditioner> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    bool isToggleButtonOn = true;

    void toggleButton(bool value) {
      setState(() {
        isToggleButtonOn = !isToggleButtonOn;
      });
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  BackButton(onPressed: () => Navigator.pop(context)),
                  Text(
                    widget.roomName,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: kLightGrey, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.wb_sunny),
                        Switch(
                          value: isToggleButtonOn,
                          onChanged: toggleButton,
                          activeColor: const Color(0xFF34E0A1),
                        ),
                      ],
                    ),
                    const SizedBox(width: 8.0),
                    const Text(
                      'Air Conditioner',
                      style: TextStyle(
                          fontSize: 20,
                          color: kBlackColour,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      '1 Active',
                      style: TextStyle(
                          fontSize: 16,
                          color: kBlackColour,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(width: 30.0),
                  ],
                ),
              ),
              const SizedBox(height: 200),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  '20\'',
                  style: TextStyle(
                      fontSize: 30,
                      color: kBlackColour,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Slider(
                value: _currentSliderValue,
                activeColor: kkButtonColor,
                thumbColor: kkButtonColor,
                max: 100,
                divisions: 5,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
              const SizedBox(height: 25),
              const Text(
                'Swing',
                style: TextStyle(
                    fontSize: 20,
                    color: kBlackColour,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Container(
                    height: 49,
                    width: 171,
                    child: const Card(
                      child: Image(image: AssetImage(kSwingIcon1)),
                    ),
                  ),
                  Container(
                    height: 49,
                    width: 171,
                    child: const Card(
                      child: Image(image: AssetImage(kSwingIcon1)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
