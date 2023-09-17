import 'package:flutter/material.dart';

import '../../constants/elevated_button.dart';
import '../../widgets/device_switcher_widget.dart';
import '../home_page/air_conditioner.dart';

class ThirdBottomSheet extends StatelessWidget {
  const ThirdBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: CustomElevatedButton(
        onPressed: () {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              ),
              context: context,
              builder: (context) {
                return Container(
                  padding: EdgeInsets.all(20),
                  height: 900,
                  child: Column(
                    children: [
                      Text(
                        'Add devices to  Tv Lounge',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onDoubleTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AirConditioner(
                                              roomName: 'Living Room',
                                            )));
                              },
                              child: DeviceSwitcherWidget(
                                icon: const Icon(Icons.tv),
                                deviceText: 'Smart TV',
                                titleText: '1 Device',
                              ),
                            ),
                            const SizedBox(width: 16),
                            GestureDetector(
                              onDoubleTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AirConditioner(
                                              roomName: 'Living Room',
                                            )));
                              },
                              child: DeviceSwitcherWidget(
                                icon: const Icon(Icons.ac_unit),
                                deviceText: 'Air Conditioner',
                                titleText: '1 Device',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onDoubleTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AirConditioner(
                                              roomName: 'Living Room',
                                            )));
                              },
                              child: DeviceSwitcherWidget(
                                icon: const Icon(Icons.filter),
                                deviceText: 'Air Purifier',
                                titleText: '1 Device',
                              ),
                            ),
                            const SizedBox(width: 16),
                            GestureDetector(
                              onDoubleTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AirConditioner(
                                              roomName: 'Living Room',
                                            )));
                              },
                              child: DeviceSwitcherWidget(
                                icon: const Icon(Icons.light),
                                deviceText: 'Smart Light',
                                titleText: '1 Device',
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        width: double.infinity,
                        child: CustomElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            text: 'Done'),
                      ),
                    ],
                  ),
                );
              });
        },
        text: 'Continue',
      ),
    );
  }
}
