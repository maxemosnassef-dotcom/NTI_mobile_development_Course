import 'package:flutter/material.dart';
import 'Background.dart';
import 'PageTitle.dart';
import 'SubTitles.dart';
import 'Sign.dart';
import 'Button.dart';
import 'TextBox.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  static const String routeName = "Login"; // Fixed: was "routName" (missing 'e')

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(
            color1: 0xFF0F2027,
            color2: 0xFF203A43,
            color3: 0xFF2C5364,
          ),
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                SizedBox(height: 100),
                PageTitle(title: "MOMENTUM"),
                SubTitles(
                  title1: "GROWTH",
                  title2: "HAPPENS",
                  title3: "TODAY",
                ),
                SizedBox(height: 60),
                Sign(),
                SizedBox(height: 60),
                Textbox(caption: "Enter Your Email", icon: Icons.mail),
                SizedBox(height: 30),
                Textbox(caption: "Enter Your Password", icon: Icons.lock),
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
