// Containers that can hold data
// helps a lots in modelling of data
// Used to define data-types of our own, or Abstract Data Types

class BankAccount {
  double accountBalance = 0.0;

  // Class Methods : Functions defined inside the class
  void deposit(double amount) {
    accountBalance += amount;
    print("\$$amount deposited successfully");
    print("Update Balance :  \$$accountBalance");
  }

  void withdraw(double amount) {
    if (accountBalance > amount) {
      accountBalance -= amount;
      print("\$$amount withdrawn successfully");
      print("Update Balance :  \$$accountBalance");
    } else {
      print("Insufficient Funds!");
      print("Your Balance :  \$$accountBalance");
    }
  }
}

void main() {
  final bankAccount = BankAccount();
  bankAccount.deposit(100);
  bankAccount.deposit(10.43);
  bankAccount.withdraw(100);
  bankAccount.withdraw(200);
}
