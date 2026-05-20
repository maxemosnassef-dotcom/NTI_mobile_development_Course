import 'package:flutter/material.dart';
import 'package:my_first_app/Custom_form_text.dart';
import 'Background.dart';
import 'PageTitle.dart';
import 'SubTitles.dart';
import 'Sign.dart';
import 'Button.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  static const String routName = "Login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(
            Color1: 0xFF0F2027,
            Color2: 0xFF203A43,
            Color3: 0xFF2C5364,
          ),

          // SizedBox(height: 30),
          Positioned(
            top: 0,
            left: 0,
            right: 0,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                SizedBox(height: 30),
                PageTitle(title: "MOMENTUM"),
                SubTitles(title1: "GROWTH", title2: "HAPPENS", title3: "TODAY"),
                SizedBox(height: 60),
                Sign(), // sign In Sign Up
                SizedBox(height: 60),

                CustomSign(
                  key: key,
                  hint: "Enter Your Email",
                  icon: Icon(Icons.mail),
                  error: "Email not Valid",
                  controller: TextEditingController(),
                  validator: (value) {
                    // 1. Check if the field is empty
                    if (value == null || value.trim().isEmpty) {
                      return 'Email address is required';
                    }
                    // 4. Return null if the email passes validation
                    return null;
                  },
                ),
                SizedBox(height: 30),
                CustomSign(
                  key: key,
                  hint: "Enter Your Password",
                  icon: Icon(Icons.lock),
                  error: "Password not Valid",
                  controller: TextEditingController(),
                  validator: (value) {
                    // 1. Check if the field is empty
                    if (value == null || value.trim().isEmpty) {
                      return 'Password is required';
                    }
                    if (value.length < 8) {
                      return 'Password should be 8 Characters at least';
                    }
                    // 4. Return null if the email passes validation
                    return null;
                  },
                ),
                SizedBox(height: 30),
                Button(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
