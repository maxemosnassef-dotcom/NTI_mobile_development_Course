import 'dart:io';

void main() {
  /*Exercise 1: Email Validator
Create a Dart program that validates whether a given string is a valid email address.
Use string methods to check for the presence of the "@" symbol,
 proper domain format, and other email address criteria.*/
  print("Enter your email:");
  String email = stdin.readLineSync()!;
  bool contAt = email.contains('@');
  if (contAt) {
    print("Your email is valid");
  } else {
    print('Your email is not valid');
  }
  print("////////////////////////////////////////////");
  /*
Exercise 2: Sentence Reversal
Write a Dart program that takes a sentence as input and reverses the order of words in it.
 For example, if the input is "Hello World," the program should output "World Hello."
These exercises will help you practice various string methods in Dart, such as splitting,
 reversing, and checking for specific patterns, while also improving your problem-solving skills.*/
  print("Enter a sentence to be reversed");
  String notRev = stdin.readLineSync()!;
  String rev = "";
  for (int i = notRev.length - 1; i >= 0; i--) {
    rev = rev + notRev[i];
  }
  print(rev);
  print("////////////////////////////////////////////");

  /*Exercise 3: Uppercase and Lowercase Conversion
Write a Dart program that takes a string as input and converts it to uppercase and lowercase.
 Print both the uppercase and lowercase versions of the string.*/
  print(" The sentence:");
  String Orig = stdin.readLineSync()!;
  String upper = Orig.toUpperCase();
  String lower = Orig.toLowerCase();
  print("The Upper Case : $upper\nThe Lower Case : $lower");
  print("////////////////////////////////////////////");
}
