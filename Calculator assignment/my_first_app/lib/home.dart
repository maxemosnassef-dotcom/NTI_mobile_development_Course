import 'package:flutter/material.dart';
import 'KeyBoard.dart';
import 'Display0.dart';

class home extends StatefulWidget {
  const home({super.key});
  static String routeName = "Home";
  // Inside your main page State class:

  @override
  State<StatefulWidget> createState() => homeState();
}

class homeState extends State<home> {
  String resText = "";
  void onButtonPressed(String text) {
    setState(() {
      if (text == 'C') {
        resText = "";
      } else if (text == "🠔") {
        if (resText.isNotEmpty) {
          resText = resText.substring(0, resText.length - 1);
        }
      } else {
        resText += text;
      }
    });
    print(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Expanded(
          child: Column(
            children: [Spacer(flex: 2), KeyBoard(), Spacer(flex: 2)],
          ),
        ),
      ),
    );
  }
}
