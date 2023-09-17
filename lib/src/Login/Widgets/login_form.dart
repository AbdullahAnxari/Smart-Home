import 'package:flutter/material.dart';
import 'package:home_control_ui/src/ForgotPassword/forgot_password.dart';
import 'package:home_control_ui/src/Registration/RegisterationScreen.dart';
import 'package:home_control_ui/src/constants/colors.dart';
import 'package:home_control_ui/src/constants/custom_text_field.dart';
import 'package:home_control_ui/src/constants/elevated_button.dart';
import 'package:home_control_ui/src/screens/home_page/wraper_screen.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var _isObscured;

  @override
  void initState() {
    _isObscured = true;
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextField(
            controller: TextEditingController(),
            labelText: 'email',
            hintText: 'Enter your email',
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {},
            icon: Icons.email,
            obscureValue: false,
          ),
          const SizedBox(height: 16),
          CustomTextField(
            obscureValue: _isObscured,
            controller: TextEditingController(),
            labelText: 'Password',
            hintText: 'Enter your password',
            keyboardType: TextInputType.text,
            onChanged: (value) {},
            icon: Icons.fingerprint,
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            child: CustomElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WrapScreen()));
              },
              text: 'Login',
            ),
          ),
          const SizedBox(height: 40),
          //forget pass
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ForgetPassword()));
            },
            child: const Text(
              'Forgot Password',
              style: TextStyle(
                fontSize: 14,
                color: kBlackColour,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(height: 40),
          //Or Continue With
          const Row(
            children: [
              Expanded(child: Divider()),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Or continue with',
                  style: TextStyle(fontSize: 14, color: kGreyColour),
                ),
              ),
              Expanded(child: Divider()),
            ],
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  // Handle "Continue with Google" button press
                },
                child: const CircleAvatar(
                  radius: 20,
                  backgroundColor: kWhiteColor,
                  backgroundImage: AssetImage('assets/logos/google_logo.png'),
                ),
              ),
              const SizedBox(width: 45),
              InkWell(
                onTap: () {
                  // Handle "Continue with Google" button press
                },
                child: const CircleAvatar(
                  radius: 20,
                  backgroundColor: kWhiteColor,
                  backgroundImage: AssetImage('assets/logos/facebook_logo.png'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don\'t have an account? ',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterationScreen()));
                },
                child: const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 14,
                    color: kBlackColour,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
