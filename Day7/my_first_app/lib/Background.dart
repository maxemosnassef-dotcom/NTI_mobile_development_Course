import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final int Color1;
  final int Color2;
  final int Color3;
  const Background({
    super.key,
    required this.Color1,
    required this.Color2,
    required this.Color3,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      left: 0,
      right: 0,
      top: 0,
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(Color1), Color(Color2), Color(Color3)],
            stops: [0.0, 0.5, 1.0],
          ),
        ),
      ),
    );
  }
}
