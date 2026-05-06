import 'bookClass.dart';

void main() {
  /*car car1 = car(model: "Lada", year: 1998);
  print("///////////////////////////////////////////");

  bankAccount cust1 = bankAccount(accountNumber: 12345, balance: 100.5);
  print("///////////////////////////////////////////");
  bankAccount cust2 = bankAccount(accountNumber: 0123, balance: 50.6);
  print("///////////////////////////////////////////");
  cust1.deposit(500);
  cust2.withdraw(50);*/
  book book1 = book(title: "Hello", author: "ME", publicationYear: 1855);
  book book2 = book(title: "Bye", author: "You", publicationYear: 1955);
  book1.printInfo();
}
