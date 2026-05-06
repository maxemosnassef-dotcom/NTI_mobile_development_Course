import 'dart:io';

void main() {
  /*Exercise 1: Greeting Function
Create a Dart program that defines a function greet which takes a person's name as a
parameter and prints a greeting message. Prompt the user to enter their name and then
call the greet function to greet them.*/
  void greetingFunction(String name) {
    print("Hello $name !");
  }

  print("What's your name ?");
  String name = stdin.readLineSync()!;
  greetingFunction(name);

  /*
Exercise 2: Calculator Function
Write a Dart program that defines a function calculate to perform basic arithmetic
operations (addition, subtraction, multiplication, division) on two numbers provided as
parameters. Prompt the user to enter two numbers and the operation they want to
perform, then call the calculate function to display the result*/
  void calculate({required double a, required double b, String? operations}) {
    switch (operations) {
      case "addition":
        print("a + b = ${a + b}");
      case "subtraction":
        print("a - b = ${a - b}");
      case "multiplication":
        print("a * b = ${a * b}");
      case "division":
        print("a / b = ${a / b}");
    }
  }

  print("Enter a");
  double a = double.parse(stdin.readLineSync()!);
  print("Enter b");
  double b = double.parse(stdin.readLineSync()!);
  print("Enter operation:");
  String operation = stdin.readLineSync()!;
  calculate(a: a, b: b, operations: operation);

  print("////////////////////////////////////////////////////////////////////");

  /*Exercise 3: Temperature Converter
Build a Dart program that defines two functions, celsiusToFahrenheit and
fahrenheitToCelsius, to convert temperatures between Celsius and Fahrenheit. Prompt
the user for a temperature value and a choice of conversion using function parameters,
and then call the appropriate function to display the converted temperature.*/
  void tempConv() {}

  /*
Exercise 4: Area Calculator
Create a Dart program that defines a function calculateArea for calculating the area of
different shapes (e.g., square, rectangle, circle) based on the user's choice and provided
parameters. Prompt the user to choose a shape, enter the necessary values (e.g., side
length, length, width, radius), and call the calculateArea function to display the area*/
}
