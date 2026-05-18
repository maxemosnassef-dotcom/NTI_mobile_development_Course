import 'package:flutter/material.dart';

class Textbox extends StatelessWidget {
  final IconData image;
  final String Caption;
  const Textbox({
    super.key,
    required this.Caption,
    required this.image,
  }); //required this.image,

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 40),
            Icon(image, color: Colors.white),
            SizedBox(width: 15),
            Text(Caption, style: TextStyle(color: Colors.white, fontSize: 20)),
          ],
        ),
        SizedBox(height: 5),
        Container(
          height: 1,
          width: 250,
          decoration: BoxDecoration(color: Colors.white),
        ),
      ],
    );
  }
}
