import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // final String Caption;
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        "SIGN UP",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 68, 83, 73).withAlpha(200),
        elevation: 5,
        padding: EdgeInsets.only(right: 130, left: 130),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      ),
    );
  }
}
