import 'package:flutter/material.dart';
import 'package:home_control_ui/src/constants/colors.dart';

import '../../constants/image_strings.dart';
import '../../widgets/device_switcher_widget.dart';
import '../home_page/air_conditioner.dart';

class RoomAppliances extends StatefulWidget {
  const RoomAppliances({super.key});

  @override
  State<RoomAppliances> createState() => _RoomAppliancesState();
}

class _RoomAppliancesState extends State<RoomAppliances> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: kBlackColour,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Heading Text',
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: kBlackColour),
        ),
        actions: [
          IconButton(
            icon: const Image(
              image: AssetImage(kAddIcon),
              height: 20,
              width: 20,
              fit: BoxFit.cover,
            ),
            color: kBlackColour,
            onPressed: () {
              // Handle add icon button press here
            },
          ),
        ],
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage(kRoom1),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Stack(
                  children: [
                    // * Heading
                    Positioned(
                      top: 25,
                      left: 40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Living room',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          // SizedBox(height: 10),
                          Text(
                            '3/3 is on',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24),
              //Devices
              Text('Devices'),
              SizedBox(height: 16),

              const SizedBox(height: 16),
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
                                builder: (context) => const AirConditioner(
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
                                builder: (context) => const AirConditioner(
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
              const SizedBox(height: 24),
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
                                builder: (context) => const AirConditioner(
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
                                builder: (context) => const AirConditioner(
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
              const SizedBox(height: 16),
              GestureDetector(
                onDoubleTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AirConditioner(
                                roomName: 'Living Room',
                              )));
                },
                child: DeviceSwitcherWidget(
                  icon: const Icon(Icons.air),
                  deviceText: 'Smart Light',
                  titleText: '1 Device',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
