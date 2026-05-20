import 'package:flutter/material.dart';
import 'button.dart';

class Display extends StatefulWidget {
  // final List<dynamic> display = [];
  String display = "";
  // const Display({super.key, required this.display});

  @override
  State<StatefulWidget> createState() => DisplayState();
}

class DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Text(widget.display),
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 99, 100, 100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
