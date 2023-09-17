import 'package:flutter/material.dart';
import 'package:home_control_ui/src/constants/colors.dart';
import 'package:home_control_ui/src/constants/image_strings.dart';
import 'package:home_control_ui/src/screens/home_page/wraper_screen.dart';
import 'package:home_control_ui/src/screens/profile/profile_screen.dart';
import 'package:home_control_ui/src/screens/rooms_screen/room_screen.dart';
import 'package:home_control_ui/src/widgets/card_widget.dart';
import 'package:home_control_ui/src/widgets/device_switcher_widget.dart';
import 'package:home_control_ui/src/widgets/scenes_row_widget.dart';

import '../bottom_sheets/first_bottom_sheet.dart';
import 'air_conditioner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  // int selectedIndex = 0;
  int selectedIndex = -1;
  List<CardWidget> cardWidgets = [
    CardWidget(
      iconPath: kTvIcon,
      title: 'Smart TV 1',
      subtitle: '2 Active',
    ),
    CardWidget(
      iconPath: kbulbIcon,
      title: 'Lights',
      subtitle: '3 Active',
    ),
    CardWidget(
      iconPath: kAirPuriIcon,
      title: 'Air Purifier',
      subtitle: '1 On',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                // --My home Text & Icon
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Home',
                      style: TextStyle(
                        fontSize: 20,
                        color: kBlackColour,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FirstBottomSheet(),
                  ],
                ),

                // --Container to show List of cards
                Container(
                  height: 80,
                  child: ListView.builder(
                    itemCount: cardWidgets.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      final cardWidget = cardWidgets[index];
                      final isSelected = index == selectedIndex;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              // cardWidget,
                              CardWidget(
                            iconPath: cardWidget.iconPath,
                            title: cardWidget.title,
                            subtitle: cardWidget.subtitle,
                            isSelected: index == selectedIndex,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Scenes',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kBlackColour,
                  ),
                ),
                const SizedBox(height: 16),
                ScenesRowWidget(
                  icon: const Icon(Icons.wb_sunny),
                  labelText: 'Morning scene',
                ),
                const SizedBox(height: 10),
                ScenesRowWidget(
                  icon: const Icon(Icons.night_shelter),
                  labelText: 'Morning scene',
                ),
                const SizedBox(height: 24),
                const Text(
                  'Frequently Used',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kBlackColour,
                  ),
                ),
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
      ),
    );
  }
}

// bottomNavigationBar: Container(
//        // padding: const EdgeInsets.all(1),
//        decoration: BoxDecoration(
//          color: kBlackColour,
//          borderRadius: BorderRadius.circular(20),
//        ),
//        child: SalomonBottomBar(
//          currentIndex: currentIndex,
//          onTap: (i) => setState(() => currentIndex = i),
//
//
//          items: [
//            /// Home
//            SalomonBottomBarItem(
//              icon:const Image(image: AssetImage(kDashBoardIcon)),
//              //  IconButton(onPressed: (){
//              //   // ignore: prefer_const_constructors
//              //   Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
//              // }, icon: const Image(image: AssetImage(kDashBoardIcon))),
//              title: const Text("Home"),
//              selectedColor: kWhiteColor,
//              unselectedColor: kWhiteColor,
//            ),
//
//            /// Rooms
//            SalomonBottomBarItem(
//               icon: const Image(image: AssetImage(kRoomsIcon)),
//              //  IconButton(onPressed: (){
//              //   Navigator.push(context, MaterialPageRoute(builder: (context)=> const RoomScreen()));
//              // }, icon: const Image(image: AssetImage(kRoomsIcon))),
//
//              title: const Text("Rooms"),
//              selectedColor: kWhiteColor,
//              unselectedColor: kWhiteColor,
//            ),
//
//            /// Profile
//            SalomonBottomBarItem(
//              icon:  const Icon(Icons.person),
//              // IconButton( onPressed: () {
//              //   Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfileScreen()));
//              //   }, icon: const Icon(Icons.person),),
//              title: const Text("Profile"),
//              selectedColor: kWhiteColor,
//              unselectedColor: kWhiteColor,
//            ),
//          ],
//        ),
//      ),
