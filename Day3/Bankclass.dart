/*Exercise 2: Bank Account Class
Define a BankAccount class with properties for accountNumber and balance. Include
methods for deposit and withdraw. Create two objects from the class, deposit and
withdraw funds, and print the account balances.*/

class bankAccount {
  late int accountNumber;
  late num balance;

  bankAccount({required this.accountNumber, required this.balance}) {
    print(
      "THIS ACCOUNT NUMBER IS : ${this.accountNumber}\n THE BALANCE IS ${this.balance}",
    );
  }
  void deposit(num num) {
    this.balance += num;
    print("your new balanve is ${this.balance}");
  }

  void withdraw(num num) {
    this.balance -= num;
    print("your new balanve is ${this.balance}");
  }
}
