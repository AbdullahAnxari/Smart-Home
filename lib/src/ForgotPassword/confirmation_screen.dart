import 'package:flutter/material.dart';
import 'package:home_control_ui/src/Login/login_screen.dart';
import 'package:home_control_ui/src/constants/app_logo.dart';
import 'package:home_control_ui/src/constants/colors.dart';
import 'package:home_control_ui/src/constants/elevated_button.dart';
import 'package:home_control_ui/src/constants/image_strings.dart';


class ConfirmationScreen extends StatefulWidget {
  const ConfirmationScreen({super.key});

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 61.0),
                 Row(
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: Image(
                        image: AssetImage(
                          kOnBoardingImage,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    AppLogo(text: 'CoShell'),
                  ],
                ),
                const SizedBox(height: 43.0),
                Container(
                  child: Image.asset(
                    kCongratulationImage,
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                ),
                const SizedBox(height: 43.0),
                const Text(
                  'Confirmation',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w400,
                    color: kBlackColour,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 35.0),
                const Text(
                  'Your password has been changed. Please log in with your new password.',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: kBlackColour,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 128.0),
                SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      text: 'Login Screen'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
