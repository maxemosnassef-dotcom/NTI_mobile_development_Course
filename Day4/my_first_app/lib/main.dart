import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
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
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/Politics.jpg",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة السياسة",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/Technology.jpeg",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة التكنولوجيا",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
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
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/Tourism.jpg",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة السياحة",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/Sports.webp",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة الرياضة",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
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
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/Health.jpeg",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة الصحة",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/Eva.jpg",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة حواء",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
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
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/economics.png",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة الاقتصاد",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/Car.jpg",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة السيارات",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
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
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/Food.jpg",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة الغذاء",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/IQ.png",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة الألغاز",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
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
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/Education.webp",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة التعليم",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/Fashion.webp",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة الموضة",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
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
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/Politics.jpg",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة السياسة",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/Technology.jpeg",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة التكنولوجيا",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
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
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/Politics.jpg",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة السياسة",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/Technology.jpeg",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة التكنولوجيا",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
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
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/Politics.jpg",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة السياسة",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/Technology.jpeg",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة التكنولوجيا",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
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
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/Politics.jpg",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة السياسة",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          "assets/Technology.jpeg",
                          width: double
                              .infinity, // Adjust based on your screen width
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 15,
                          right: 5,
                          child: Container(
                            color: Colors.purple.withAlpha(150),
                            alignment: Alignment.center,
                            child: Text(
                              "مجلة التكنولوجيا",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
