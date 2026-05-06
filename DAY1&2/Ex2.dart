import 'dart:io';

void main() {
  print("Hello, your name is? :");
  String name = (stdin.readLineSync()!);

  print("your age is? :");
  double age = double.parse(stdin.readLineSync()!);

  print("your fav colour is? :");
  String color = (stdin.readLineSync()!);

  print("Name is :$name, age is: $age, favourit colour is: $color");
}
