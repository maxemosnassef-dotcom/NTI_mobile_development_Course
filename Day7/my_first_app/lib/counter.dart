import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key}); // Added const modifier
  static const String routeName = "counter";

  @override
  State<StatefulWidget> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  final List<String> images = [
    "https://wallpaperaccess.com/full/1155040.jpg", // Index 0 (Default)
    "https://images.unsplash.com/photo-1579546929518-9e396f3cc809", // Index 1 (When counter > 5)
    "https://images.unsplash.com/photo-1557683316-973673baf926", // Index 2 (When counter > 10)
  ];

  @override
  Widget build(BuildContext context) {
    // Dynamically choose the image index based on your conditions
    int imageIndex = 0;
    if (counter > 10) {
      imageIndex = 2; // Show third image if counter is above 10
    } else if (counter > 5) {
      imageIndex = 1; // Show second image if counter is between 6 and 10
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Counter Screen')),
      body: Stack(
        children: [
          Positioned(
            top: 50,
            height: 100,
            right: 75,
            child: Image.network(
              images[imageIndex], // Dynamically references computed index
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      counter++; // Clean mutation inside setState
                    });
                  },
                ),
                Text("$counter", style: const TextStyle(fontSize: 20)),
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
