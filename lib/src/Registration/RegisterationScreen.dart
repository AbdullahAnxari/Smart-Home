import 'package:flutter/material.dart';
import 'package:home_control_ui/src/constants/app_logo.dart';
import 'package:home_control_ui/src/constants/colors.dart';
import 'package:home_control_ui/src/constants/image_strings.dart';



import 'Widgets/registeration_form.dart';

class RegisterationScreen extends StatefulWidget {
  const RegisterationScreen({Key? key}) : super(key: key);

  @override
  State<RegisterationScreen> createState() => _RegisterationScreenState();
}

class _RegisterationScreenState extends State<RegisterationScreen> {
  double PagePadding = 30.0;
  bool _isSelected = true;

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(26.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 64.0),
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
                SizedBox(height: 24.0),
                Text(
                  'Registration',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w400,
                    color: kBlackColour,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 12.0),
                Text(
                  'Let’s Register. Apply to jobs!',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: kBlackColour,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 12.0),
                RegistrationForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
