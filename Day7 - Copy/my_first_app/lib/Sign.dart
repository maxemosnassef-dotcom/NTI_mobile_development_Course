import 'package:flutter/material.dart';

class Sign extends StatelessWidget {
  const Sign({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "SIGN IN",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        Text(
          "SIGN UP",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ],
    );
  }
}
