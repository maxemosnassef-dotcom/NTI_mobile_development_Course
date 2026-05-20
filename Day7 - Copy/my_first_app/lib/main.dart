import 'package:flutter/material.dart';
import 'package:my_first_app/Home.dart';
import 'package:my_first_app/counter.dart';
import 'Login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Login.routeName,
      routes: {
        Login.routeName: (context) => const Login(),
        Home.routeName: (context) => Home(),
        CounterScreen.routeName: (context) => const CounterScreen(),
      },
    ),
  );
}
