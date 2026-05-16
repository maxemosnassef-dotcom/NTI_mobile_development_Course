import 'package:flutter/material.dart';

class Sign extends StatelessWidget {
  const Sign({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Text(
            "SIGN IN",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        // SizedBox(width: 100),
        Container(
          child: Text(
            "SIGN UP",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
