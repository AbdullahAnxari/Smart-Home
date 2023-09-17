import 'package:flutter/material.dart';
import 'package:home_control_ui/src/widgets/profile_nav_tile.dart';

import '../../constants/colors.dart';
import '../../constants/image_strings.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //Profile and Icon of night
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {},
                ),
                const Text(
                  'Profile',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.nightlight_round),
                  onPressed: () {},
                ),
              ],
            ),
            //Profile Photo
            const SizedBox(height: 20),
            Stack(
              children: [
                const SizedBox(
                  width: 120,
                  height: 120,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(kProfilePhoto),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        color: kLightGrey,
                      ),
                      child: const Icon(
                        Icons.edit,
                        color: kBlackColour,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Email and name
            const SizedBox(height: 20),
            const Text(
              'John Doe',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'john.doe@example.com',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 40),
            const Divider(),
            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ProfileNavBar(
                title: 'Profile Details',
                onTap: () {},
                icon: Icons.person,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ProfileNavBar(
                title: 'Setting',
                onTap: () {},
                icon: Icons.settings,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ProfileNavBar(
                title: 'Push Notification',
                onTap: () {},
                icon: Icons.notifications,
              ),
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ProfileNavBar(
                title: 'Support',
                onTap: () {},
                icon: Icons.support,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ProfileNavBar(
                title: 'Logout',
                onTap: () {},
                icon: Icons.logout,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
