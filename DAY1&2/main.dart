import 'dart:io';

void main() {
  print("Hello to the rectangle geometry calculator\n Enter the Length:");
  double Length = double.parse(stdin.readLineSync()!);
  print("Enter the Width:");
  double Width = double.parse(stdin.readLineSync()!);

  double Area = Length * Width;
  double Perimeter = 2 * (Length + Width);
  print("The Perimeter is :$Perimeter");
  print("The Area is :$Area");
}
