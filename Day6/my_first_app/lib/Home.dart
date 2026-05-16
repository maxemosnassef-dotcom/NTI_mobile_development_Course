import 'package:flutter/material.dart';
import 'Background.dart';
import 'PageTitle.dart';
import 'SubTitles.dart';
import 'Sign.dart';
import 'Button.dart';
import 'TextBox.dart';

class Home extends StatelessWidget {
  Home({super.key});

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
              children: [
                SizedBox(height: 100),
                PageTitle(title: "MOMENTUM"),
                SubTitles(title1: "GROWTH", title2: "HAPPENS", title3: "TODAY"),
                SizedBox(height: 100),
                Sign(), // sign In Sign Up
                SizedBox(height: 80),
                Textbox(Caption: "Enter Your Email", image: Icons.mail),
                SizedBox(height: 40),
                Textbox(Caption: "Enter Your Password", image: Icons.lock),

                SizedBox(height: 250),

                Button(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
