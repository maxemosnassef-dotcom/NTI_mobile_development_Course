import 'package:flutter/material.dart';
import 'Item.dart';
import 'UpBarTitle.dart';

/// Simple data class to hold category info — NOT a widget.
/// Previously the code was incorrectly using Item widgets as data objects.
class NewsCategory {
  final String image;
  final String caption;
  const NewsCategory({required this.image, required this.caption});
}

class Home extends StatelessWidget {
  Home({super.key});
  static const String routeName = "Home";

  final List<NewsCategory> items = const [
    NewsCategory(image: 'Technology.jpeg', caption: 'التكنولوجيا'),
    NewsCategory(image: 'economics.png', caption: 'الاقتصاد'),
    NewsCategory(image: 'Sports.webp', caption: 'الرياضة'),
    NewsCategory(image: 'Tourism.jpg', caption: 'السياحه'),
    NewsCategory(image: 'Car.jpg', caption: 'السيارات'),
    NewsCategory(image: 'Politics.jpg', caption: 'السياسه'),
    NewsCategory(image: 'Health.jpeg', caption: 'الصحه'),
    NewsCategory(image: 'Food.jpg', caption: 'الطهى'),
    NewsCategory(image: 'IQ.png', caption: 'المعرفة'),
    NewsCategory(image: 'Eva.jpg', caption: 'حواء'),
    NewsCategory(image: 'Technology.jpeg', caption: 'التكنولوجيا'),
    NewsCategory(image: 'economics.png', caption: 'الاقتصاد'),
    NewsCategory(image: 'Sports.webp', caption: 'الرياضة'),
    NewsCategory(image: 'Tourism.jpg', caption: 'السياحه'),
    NewsCategory(image: 'Car.jpg', caption: 'السيارات'),
    NewsCategory(image: 'Politics.jpg', caption: 'السياسه'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 37),
          Row(
            children: [
              const Expanded(
                child: UpBarTitle(text: "الأخبار", topLeft: 20, topRight: 0),
              ),
              const SizedBox(width: 2),
              const Expanded(
                child: UpBarTitle(text: "المجلات", topLeft: 0, topRight: 20),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              itemCount: items.length,
              padding: const EdgeInsets.only(top: 5),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 570 / 350,
                crossAxisSpacing: 3,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Item(
                  image: items[index].image,
                  caption: items[index].caption,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
