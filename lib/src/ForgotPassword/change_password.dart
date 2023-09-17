import 'package:flutter/material.dart';
import 'package:home_control_ui/src/ForgotPassword/confirmation_screen.dart';
import 'package:home_control_ui/src/constants/app_logo.dart';
import 'package:home_control_ui/src/constants/colors.dart';
import 'package:home_control_ui/src/constants/custom_text_field.dart';
import 'package:home_control_ui/src/constants/elevated_button.dart';
import 'package:home_control_ui/src/constants/image_strings.dart';


class ResetCode extends StatefulWidget {
  const ResetCode({super.key});

  @override
  State<ResetCode> createState() => _ResetCodeState();
}

class _ResetCodeState extends State<ResetCode> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(alignment: Alignment.topLeft, child: BackButton()),
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
                const Text(
                  'Change Password',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w400,
                    color: kBlackColour,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 35.0),
                const Text(
                  'Enter your new password and confirm the new password to reset password',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: kBlackColour,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 86.0),
                CustomTextField(
                  controller: _controller,
                  labelText: 'New Password',
                  hintText: 'New Password',
                  keyboardType: TextInputType.text,
                  onChanged: (value) {},
                  icon: Icons.fingerprint,
                  obscureValue: false,
                ),
                const SizedBox(height: 16.0),
                CustomTextField(
                  controller: _controller,
                  labelText: 'Confirm New Password',
                  hintText: 'Confirm New Password',
                  keyboardType: TextInputType.text,
                  onChanged: (value) {},
                  icon: Icons.fingerprint,
                  obscureValue: false,
                ),
                const SizedBox(height: 128.0),
                SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ConfirmationScreen()));
                      },
                      text: 'Change Password'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
