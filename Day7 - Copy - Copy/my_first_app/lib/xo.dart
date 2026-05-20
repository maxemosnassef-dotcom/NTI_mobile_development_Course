import 'package:flutter/material.dart';
import 'CustomAppBar.dart';
import 'BoardButton.dart';

class XO extends StatelessWidget {
  static const String routteName = "XO";
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Row(
            children: [
              BoardButton(
                value: "X",
                onBoardButtonPressed: () => onBoardButtonPressed(index),
              ),
            ],
          ),
        ],
      ),
    );
  }

  onBoardButtonPressed(int index) {}
}
