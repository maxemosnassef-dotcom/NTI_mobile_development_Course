import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color color;
  final bool extended;
  final Function onButtonPressed;

  const Button({
    super.key,
    required this.text,
    required this.color,
    required this.extended,
    int? flex, // Kept from original constructor signature
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: extended ? 2 : 1,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: AspectRatio(
          // Crucial: A regular button is a 1:1 square.
          // An extended button needs a wider aspect ratio (around 2.1) so it doesn't get too tall.
          aspectRatio: extended ? 2.1 : 1.0,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
            onPressed: () {
              onButtonPressed(text);
            },
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 50,
                fontFamily: "Cairo",
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
