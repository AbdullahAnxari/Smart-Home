import 'package:flutter/material.dart';
import 'package:home_control_ui/src/ForgotPassword/change_password.dart';
import 'package:home_control_ui/src/constants/app_logo.dart';
import 'package:home_control_ui/src/constants/colors.dart';
import 'package:home_control_ui/src/constants/elevated_button.dart';
import 'package:home_control_ui/src/constants/image_strings.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
class VerifyPassword extends StatefulWidget {
  const VerifyPassword({super.key});

  @override
  State<VerifyPassword> createState() => _VerifyPasswordState();
}

class _VerifyPasswordState extends State<VerifyPassword> {
  final TextEditingController _controller = TextEditingController();
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
                  const Text(
                    'Verify Code',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                      color: kBlackColour,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 35.0),
                  const Text(
                    'Enter your verification code from your email or phone number that we’ve sent',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: kBlackColour,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 86.0),
                
                  OtpTextField(
                    numberOfFields: 4,
                    borderColor: kBlueColour,
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Verification Code"),
                              content:
                                  Text('Code entered is $verificationCode'),
                            );
                          });
                    }, // end onSubmit
                  ),
                  const SizedBox(height: 120.0),
                  SizedBox(
                      width: double.infinity,
                      child: CustomElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ResetCode()));
                          },
                          text: 'Verify Code')),
                ],
              )),
        ),
      ),
    );
  }
}
