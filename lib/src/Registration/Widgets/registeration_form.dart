import 'package:flutter/material.dart';
import 'package:home_control_ui/src/Login/login_screen.dart';
import 'package:home_control_ui/src/constants/colors.dart';
import 'package:home_control_ui/src/constants/custom_text_field.dart';
import 'package:home_control_ui/src/constants/elevated_button.dart';
import 'package:home_control_ui/src/screens/home_page/wraper_screen.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({
    super.key,
  });

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
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
            labelText: 'Name',
            hintText: 'Enter your name',
            keyboardType: TextInputType.text,
            onChanged: (value) {},
            icon: Icons.person,
            obscureValue: false,
          ),
          SizedBox(height: 10),
          CustomTextField(
            controller: TextEditingController(),
            labelText: 'email',
            hintText: 'Enter your email',
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {},
            icon: Icons.email,
            obscureValue: false,
          ),
          SizedBox(height: 10),
          CustomTextField(
            controller: TextEditingController(),
            labelText: 'Number',
            hintText: 'Enter your phone',
            keyboardType: TextInputType.phone,
            onChanged: (value) {},
            icon: Icons.phone,
            obscureValue: false,
          ),
          SizedBox(height: 10),
          CustomTextField(
            controller: TextEditingController(),
            labelText: 'Password',
            hintText: 'Enter your password',
            keyboardType: TextInputType.visiblePassword,
            onChanged: (value) {},
            icon: Icons.fingerprint,
            obscureValue: _isObscured,
          ),
          SizedBox(height: 20),
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
          SizedBox(height: 10),
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
          SizedBox(height: 15),
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
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Have an account? ',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: const Text(
                  'Sign in',
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
