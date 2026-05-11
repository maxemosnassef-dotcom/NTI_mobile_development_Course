import 'package:flutter/material.dart';
import 'Item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            Row(
              children: [
                SizedBox(width: 5),
                Expanded(
                  child: Item(image: "Politics.jpg", Caption: "مجلة السياسة"),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Item(
                    image: "Technology.jpeg",
                    Caption: "مجلة التكنولوجيا",
                  ),
                ),
                SizedBox(width: 5),
              ],
            ),
            SizedBox(height: 5),

            Row(
              children: [
                SizedBox(width: 5),
                Expanded(
                  child: Item(image: "Tourism.jpg", Caption: "مجلة السياحة"),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Item(image: "Sports.webp", Caption: "مجلة الرياضة"),
                ),
                SizedBox(width: 5),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 5),
                Expanded(
                  child: Item(image: "Health.jpeg", Caption: "مجلة الصحة"),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Item(image: "Eva.jpg", Caption: "مجلة حواء"),
                ),
                SizedBox(width: 5),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 5),
                Expanded(
                  child: Item(image: "economics.png", Caption: "مجلة الاقتصاد"),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Item(image: "Car.jpg", Caption: "مجلة السيارات"),
                ),
                SizedBox(width: 5),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 5),
                Expanded(
                  child: Item(image: "Food.jpg", Caption: "مجلة الغذاء"),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Item(image: "IQ.png", Caption: "مجلة الألغاز"),
                ),
                SizedBox(width: 5),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 5),
                Expanded(
                  child: Item(image: "Education.webp", Caption: "مجلة التعليم"),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Item(image: "Fashion.webp", Caption: "مجلة الموضة"),
                ),
                SizedBox(width: 5),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 5),
                Expanded(
                  child: Item(image: "Politics.jpg", Caption: "مجلة السياسة"),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Item(
                    image: "Technology.jpeg",
                    Caption: "مجلة التكنولوجيا",
                  ),
                ),
                SizedBox(width: 5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
