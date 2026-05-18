import 'package:flutter/material.dart';

class SubTitles extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;

  const SubTitles({
    super.key,
    required this.title1,
    required this.title2,
    required this.title3,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "$title1 . $title2 . $title3",
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
