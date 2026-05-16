import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String image;
  final String Caption;
  const Item({super.key, required this.image, required this.Caption});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/${image}"),
              // width: 200, // Adjust based on your screen width
              // height: 200,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          right: 5,
          child: Container(
            color: Colors.purple.withAlpha(150),
            alignment: Alignment.center,
            child: Text(
              "${Caption}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: "Cairo",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
