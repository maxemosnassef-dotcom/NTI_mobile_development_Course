import 'package:flutter/material.dart';

class UpBarTitle extends StatelessWidget {
  final String text;
  final double topRight;
  final double topLeft;

  const UpBarTitle({
    super.key,
    required this.text,
    required this.topRight,
    required this.topLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeft),
          topRight: Radius.circular(topRight),
        ),
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 59, 1, 63),
            Color.fromARGB(255, 125, 9, 133),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),

      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: "Cairo",
        ),
      ),
    );
  }
}
