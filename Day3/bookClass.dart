/*Exercise 3: Book Class
Create a Book class with properties for title, author, and publicationYear. Implement a
method called printInfo that prints the book's information. Create two Book objects and
call the printInfo method for each.*/
class book {
  late String title;
  late String author;
  late int publicationYear;

  book({
    required this.title,
    required this.author,
    required this.publicationYear,
  });
  void printInfo() {
    print(
      "The book title is ${this.title}\nThe author is${this.author}\nThe Publication Year is ${this.publicationYear}",
    );
  }
}
