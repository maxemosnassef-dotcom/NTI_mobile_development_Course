import 'package:flutter/material.dart';
import 'Home.dart';

class Button extends StatelessWidget {
  // final String Caption;
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, Home.routeName);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 68, 83, 73).withAlpha(200),
        elevation: 5,
        padding: EdgeInsets.only(right: 30, left: 30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      ),
      child: Text(
        "SIGN UP",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
