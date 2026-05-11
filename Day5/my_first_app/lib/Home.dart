import 'package:flutter/material.dart';
import 'Item.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<Item> Items = [
    Item(image: 'economics.png', Caption: 'الاقتصاد'),
    Item(image: 'Technology.jpeg', Caption: 'التكنولوجيا'),
    Item(image: "Sports.webp", Caption: 'الرياضة'),
    Item(image: 'Tourism.jpg', Caption: 'السياحه'),
    Item(image: 'Car.jpg', Caption: 'السيارات'),
    Item(image: 'Politics.jpg', Caption: 'السياسه'),
    Item(image: 'Health.jpeg', Caption: 'الصحه'),
    Item(image: 'Food.jpg', Caption: 'الطهى'),
    Item(image: 'IQ.png', Caption: 'المعرفة'),
    Item(image: 'Eva.jpg', Caption: 'حواء'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 133, 29, 198),
                  child: Text(
                    "الأخبار",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: "Cairo",
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 133, 29, 198),
                  child: Text(
                    "المجلات",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: "Cairo",
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Expanded(
            child: ListView.builder(
              itemCount: Items.length,
              itemBuilder: (BuildContext context, int index) {
                return Item(
                  image: Items[index].image,
                  Caption: Items[index].Caption,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
