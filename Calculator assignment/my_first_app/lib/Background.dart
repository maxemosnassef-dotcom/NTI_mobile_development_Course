import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      left: 0,
      right: 0,
      top: 0,
      bottom: 0,
      child: Container(decoration: BoxDecoration(color: Colors.black)),
    );
  }
}
