import 'package:flutter/material.dart';
import 'package:my_first_app/counter.dart';

class Item extends StatelessWidget {
  final String image;
  final String caption;

  const Item({super.key, required this.image, required this.caption});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, CounterScreen.routeName),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/$image"),
                fit: BoxFit.fill,
              ),
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
              caption,
              style: const TextStyle(
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
