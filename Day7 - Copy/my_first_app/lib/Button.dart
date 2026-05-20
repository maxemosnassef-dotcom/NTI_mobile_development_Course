import 'package:flutter/material.dart';
import 'Home.dart';

class Button extends StatelessWidget {
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
        padding: const EdgeInsets.symmetric(horizontal: 30),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      child: const Text(
        "SIGN UP",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
