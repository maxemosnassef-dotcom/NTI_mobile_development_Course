import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final int color1;
  final int color2;
  final int color3;

  const Background({
    super.key,
    required this.color1,
    required this.color2,
    required this.color3,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(color1), Color(color2), Color(color3)],
            stops: const [0.0, 0.5, 1.0],
          ),
        ),
      ),
    );
  }
}
