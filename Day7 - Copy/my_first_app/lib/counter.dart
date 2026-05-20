import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  static const String routeName = "counter";

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  // Fixed: Unsplash URLs require ?w= parameter, otherwise they return an error
  final List<String> images = [
    "https://wallpaperaccess.com/full/1155040.jpg",
    "https://images.unsplash.com/photo-1579546929518-9e396f3cc809?w=400",
    "https://images.unsplash.com/photo-1557683316-973673baf926?w=400",
  ];

  int get _imageIndex {
    if (counter > 10) return 2;
    if (counter > 5) return 1;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Screen')),
      body: Stack(
        children: [
          Positioned(
            top: 50,
            height: 100,
            right: 75,
            child: Image.network(
              images[_imageIndex],
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.broken_image, size: 60),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () => setState(() => counter++),
                ),
                Text("$counter", style: const TextStyle(fontSize: 20)),
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () => setState(() => counter--),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
