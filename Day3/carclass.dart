/*Exercise 1: Creating a Class
Create a Dart class called Car with properties for make, model, and year. Add a
constructor to initialize these properties. Then, create an object of the Car class and print
its details.*/

class car {
  late String model;
  late int year;

  car({required this.model, required this.year}) {
    print("The model is ${this.model} and the year is ${this.year}");
  }
}
