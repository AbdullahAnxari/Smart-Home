import 'package:flutter/material.dart';
import 'package:home_control_ui/src/Login/login_screen.dart';
import 'package:home_control_ui/src/constants/colors.dart';
import 'package:home_control_ui/src/constants/elevated_button.dart';
import 'package:home_control_ui/src/constants/image_strings.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Background Container
            const SizedBox(
              width: double.infinity,
              height: 840,
              // color: Colors.black,
            ),
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                width: 390,
                height: 320,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
            ),

            // Center Container with Column and Text
            const Positioned(
              bottom: 250,
              child: SizedBox(
                width: 390,
                height: 320,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: Image(
                        image: AssetImage(
                          kOnBoardingImage,
                        ),
                      ),
                    ), 
                    Text(
                      'CoShell',
                      style: TextStyle(
                          fontSize: 48, color: kOnBoardingTextColor),
                    ),
                    Text(
                      'A new way to control your home',
                      style: TextStyle(
                          fontSize: 16, color: kOnBoardingTextColor),
                    ),
                  ],
                ),
              ),
            ),

            // Get Started Button
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Center(
                child: SizedBox(
                  width: 127,
                  height: 48,
                  child: CustomElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    text: 'Get Started',
                    buttonColor: kkButtonColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
