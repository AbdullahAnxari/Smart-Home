import 'package:flutter/material.dart';
import 'package:home_control_ui/src/screens/rooms_screen/room_appliances.dart';

import '../../constants/image_strings.dart';
import '../bottom_sheets/first_bottom_sheet.dart';
import '../../widgets/room_info_container_widget.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Room',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    // Add icon & Bottom Sheet
                    FirstBottomSheet(),
                  ],
                ),
                const SizedBox(height: 24),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RoomAppliances()));
                  },
                  child: RoomInfoContainer(
                    backgroundImagePath: kRoom1,
                    headingText: 'Living Room',
                    subheadingText: '3/3 is on',
                    iconPaths: const [
                      kTvIcon,
                      kAirPuriIcon,
                      kAirPuri2Icon,
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                RoomInfoContainer(
                  backgroundImagePath: kRoom2,
                  headingText: 'Living Room',
                  subheadingText: '3/3 is on',
                  iconPaths: const [
                    kTvIcon,
                    kAirPuriIcon,
                    kAirPuri2Icon,
                  ],
                ),
                const SizedBox(height: 24),
                RoomInfoContainer(
                  backgroundImagePath: kRoom3,
                  headingText: 'Living Room',
                  subheadingText: '3/3 is on',
                  iconPaths: const [
                    kTvIcon,
                    kAirPuriIcon,
                    kAirPuri2Icon,
                  ],
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
