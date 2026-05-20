import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({super.key, required this.resText});

  final String resText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.bottomRight,
      child: Text(resText, style: TextStyle(fontSize: 35, color: Colors.white)),
      height: 150,
      width: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 99, 100, 100),
      ),
    );
  }
}
