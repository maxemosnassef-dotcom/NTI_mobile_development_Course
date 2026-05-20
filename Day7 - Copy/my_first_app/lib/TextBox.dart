import 'package:flutter/material.dart';

class Textbox extends StatelessWidget {
  final IconData icon;
  final String caption;

  const Textbox({
    super.key,
    required this.caption,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 40),
            Icon(icon, color: Colors.white),
            const SizedBox(width: 15),
            Text(
              caption,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Container(
          height: 1,
          width: 250,
          color: Colors.white,
        ),
      ],
    );
  }
}
