import 'dart:io';
import 'dart:math';

void main() {
  /*Exercise 1: Calculate Circle Area
Write a Dart program that calculates the area of a circle.
Take the radius as input and print the area.*/

  print("/////////////////////////////////////////////////////");
  print("Calculate Circle Area\n    Enter the radius: ");
  double radius = double.parse(stdin.readLineSync()!);
  double area = 3.14 * pow(radius, 2);
  print("Area is: $area");
  print("/////////////////////////////////////////////////////");

  /*• Exercise 2: Check Odd or Even
Write a program that checks if a given number is odd or even. Take a
number as input and print whether it's odd or even.*/

  print("/////////////////////////////////////////////////////");
  print("To check even or odd\n    Enter the number: ");
  int num = int.parse(stdin.readLineSync()!);
  if (num % 2 == 0) {
    print("The number you entered is Even!");
  } else {
    print("The number you entered is Odd!");
  }
  print("/////////////////////////////////////////////////////");

  /*• Exercise 3: Calculate BMI (Body Mass Index)
Write a program that calculates BMI, Take the weight (in kilograms)
and height (in meters) as input and print the BMI along with a message
indicating whether the person is underweight normal weight overweight,
or obese.*/

  print("/////////////////////////////////////////////////////");
  print("This is the BMI calculator\nEnter your wieght in kilogram: ");
  int weight = int.parse(stdin.readLineSync()!);
  print("\n");
  print("Enter your height in meters: ");
  double height = double.parse(stdin.readLineSync()!);
  print("\n");
  double BMI = weight / pow(height, 2);

  if (BMI < 18) {
    print("You are Underwight");
  } else if (BMI < 25) {
    print("You are okay");
  } else {
    print("You are overweight!");
  }
  print("/////////////////////////////////////////////////////");
  /*• Exercise 4: Convert Minutes to Hours and Minutes
Develop a program that converts a given number of minutes into hours
and minutes. Take the minutes as input and print the equivalent hours an«
remaining minutes.*/
  print("Convert Minutes to Hours and Minutes\n1: Minutes\n2: Hours");

  int choice = int.parse(stdin.readLineSync()!);
  print("Enter number: ");
  double numOf = double.parse(stdin.readLineSync()!);

  if (choice == 1) {
    print("This is ${numOf / 60} hours");
  } else if (choice == 2) {
    print("This is ${numOf * 60} minutes");
  }
  print("/////////////////////////////////////////////////////");

  /*• Exercise 5: Swap Two Numbers
Create a program that swaps the values of two variables. Take two
numbers as input, swap their values, and print the swapped values.
 */
  print("Swap two numbers\nEnter first:");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter second:");
  int b = int.parse(stdin.readLineSync()!);
  int c = a;
  a = b;
  b = c;
}
