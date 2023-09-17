import 'package:flutter/material.dart';
import 'package:home_control_ui/src/screens/profile/profile_screen.dart';
import 'package:home_control_ui/src/screens/rooms_screen/room_screen.dart';
import 'package:home_control_ui/src/widgets/card_widget.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'package:home_control_ui/src/constants/image_strings.dart';

import '../../constants/colors.dart';
import 'home_screen.dart';

class WrapScreen extends StatefulWidget {
  const WrapScreen({super.key});

  @override
  State<WrapScreen> createState() => _WrapScreenState();
}

class _WrapScreenState extends State<WrapScreen> {
  int currentIndex = 0;
  int selectedIndex = 0;
  List<CardWidget> cardWidgets = [
    const CardWidget(
      iconPath: kTvIcon,
      title: 'Smart TV 1',
      subtitle: '2 Active',
    ),
    const CardWidget(
      iconPath: kbulbIcon,
      title: 'Lights',
      subtitle: '3 Active',
    ),
    const CardWidget(
      iconPath: kAirPuriIcon,
      title: 'Air Purifier',
      subtitle: '1 On',
    ),
  ];

  final List<Widget> screens = [
    const HomeScreen(),
    const RoomScreen(),
    const ProfileScreen(),
  ];

  //todo:
  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // screens[currentIndex],
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        // padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: kBlackColour,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SalomonBottomBar(
          currentIndex: currentIndex,
          onTap: (i) => setState(() => currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: const Image(image: AssetImage(kDashBoardIcon)),
              title: const Text("Home"),
              selectedColor: kWhiteColor,
              unselectedColor: kWhiteColor,
            ),

            /// Rooms
            SalomonBottomBarItem(
              icon: const Image(image: AssetImage(kRoomsIcon)),
              //

              title: const Text("Rooms"),
              selectedColor: kWhiteColor,
              unselectedColor: kWhiteColor,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),
              selectedColor: kWhiteColor,
              unselectedColor: kWhiteColor,
            ),
          ],
        ),
      ),

      backgroundColor: Colors.indigo.shade50,
    );
  }
}
