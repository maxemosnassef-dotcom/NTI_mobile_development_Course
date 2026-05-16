import 'package:flutter/material.dart';
import 'package:my_first_app/Home.dart';
import 'package:my_first_app/counter.dart';
import 'Login.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: Login.routName,

      routes: {
        Login.routName: (context) => Login(),
        Home.routeName: (context) => Home(),
        CounterScreen.routeName: (context) => CounterScreen(),
      },
    ),
  );
}
