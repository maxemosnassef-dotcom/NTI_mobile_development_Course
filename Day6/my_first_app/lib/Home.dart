import 'package:flutter/material.dart';
import 'Item.dart';
import 'UpBarTitle.dart';

class Home extends StatelessWidget {
  Home({super.key});
  static const String routeName = "Home";

  List<Item> Items1 = [
    Item(image: 'Technology.jpeg', Caption: 'التكنولوجيا'),
    Item(image: 'economics.png', Caption: 'الاقتصاد'),
    Item(image: "Sports.webp", Caption: 'الرياضة'),
    Item(image: 'Tourism.jpg', Caption: 'السياحه'),
    Item(image: 'Car.jpg', Caption: 'السيارات'),
    Item(image: 'Politics.jpg', Caption: 'السياسه'),
    Item(image: 'Health.jpeg', Caption: 'الصحه'),
    Item(image: 'Food.jpg', Caption: 'الطهى'),
    Item(image: 'IQ.png', Caption: 'المعرفة'),
    Item(image: 'Eva.jpg', Caption: 'حواء'),
    Item(image: 'Technology.jpeg', Caption: 'التكنولوجيا'),
    Item(image: 'economics.png', Caption: 'الاقتصاد'),
    Item(image: "Sports.webp", Caption: 'الرياضة'),
    Item(image: 'Tourism.jpg', Caption: 'السياحه'),
    Item(image: 'Car.jpg', Caption: 'السيارات'),
    Item(image: 'Politics.jpg', Caption: 'السياسه'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 37),
          Row(
            children: [
              Expanded(
                child: UpBarTitle(text: "الأخبار", topLeft: 20, topRight: 0),
              ),
              SizedBox(width: 2),
              Expanded(
                child: UpBarTitle(text: "المجلات", topLeft: 0, topRight: 20),
              ),
            ],
          ),

          // Expanded(
          //   child: ListView.builder(
          //     itemCount: Items.length,
          //     padding: EdgeInsets.all(5),
          //     itemBuilder: (BuildContext context, int index) {
          //       return Item(
          //         image: Items[index].image,
          //         Caption: Items[index].Caption,
          //       );
          //     },
          //   ),
          // ),
          Expanded(
            child: GridView.builder(
              itemCount: Items1.length,
              padding: EdgeInsets.only(top: 5),
              physics: const BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 570 / 350,
                crossAxisSpacing: 3,
                mainAxisSpacing: 5,
              ),

              itemBuilder: (BuildContext context, int index) {
                return Item(
                  image: Items1[index].image,
                  Caption: Items1[index].Caption,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
