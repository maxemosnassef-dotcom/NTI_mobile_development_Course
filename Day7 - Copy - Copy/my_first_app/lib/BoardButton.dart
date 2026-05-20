import 'package:flutter/material.dart';

class BoardButton extends StatelessWidget {
  final String value;

  final Function onBoardButtonPressed;
  const BoardButton({
    super.key,
    required this.value,
    required this.onBoardButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onBoardButtonPressed(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(4),
          ),
        ),
        child: Text(value),
      ),
    );
  }
}
