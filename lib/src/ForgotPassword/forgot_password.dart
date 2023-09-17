import 'package:flutter/material.dart';
import 'package:home_control_ui/src/ForgotPassword/verify_code.dart';
import 'package:home_control_ui/src/constants/app_logo.dart';
import 'package:home_control_ui/src/constants/colors.dart';
import 'package:home_control_ui/src/constants/custom_text_field.dart';
import 'package:home_control_ui/src/constants/elevated_button.dart';
import 'package:home_control_ui/src/constants/image_strings.dart';



class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w400,
                    color: kBlackColour,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 35.0),
                const Text(
                  'Enter your email or phone number, we will send you verification code',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: kBlackColour,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 86.0),
                Container(
                  width: 281,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(
                        0xFFF2F6FD), // Set your desired background color here
                  ),
                  child: const Center(
                    child: Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 48.0),
                CustomTextField(
                  controller: _controller,
                  labelText: 'E-mail',
                  hintText: 'E-mail',
                  keyboardType: TextInputType.text,
                  onChanged: (value) {},
                  icon: Icons.email_sharp,
                  obscureValue: false,
                ),
                const SizedBox(height: 120.0),
                SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VerifyPassword()));
                      },
                      text: 'Send Code'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
