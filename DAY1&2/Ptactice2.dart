import 'dart:io';

void main() {
  //Multiplication table
  print("WELCOME TO MULTIPLICATION TABLE\nEnter a number:");
  int num = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < 11; i++) {
    print("$i × $num = ${num * i}");
  }
  print("///////////////////////////////////////////////////////////////");

  //Number guessing game
  print("WELCOME TO Number Guessing game");
  int counter = 0;
  int correctNum = 30;
  int num2 = 0;

  while (num2 != correctNum) {
    print("Enter a number between 1 and 100:");
    num2 = int.parse(stdin.readLineSync()!);

    if (num2 < correctNum) {
      print("Number is Too low");
      counter++;
    } else if (num2 > correctNum) {
      print("Number is Too high");
      counter++;
    } else {
      print("Number is correct");
      counter++;
      print("Yo tried : $counter times");
    }
  }

  //Factorial calculator
  print("///////////////////////////////////////////////////////////////");
  print("WELCOME TO Factorial calulator\nEnter a positive number:");
  int fact = int.parse(stdin.readLineSync()!);
  int counter2 = fact;
  int Value = 1;
  while (counter2 > 1) {
    Value *= counter2;
    counter2--;
  }
  print("The factorial of $fact = $Value");
}
