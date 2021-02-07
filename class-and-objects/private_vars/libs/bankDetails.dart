// Private vars are set at file level in Dart
// Means In this programs file we can make changes to _balance wherevr we want outside the class also
// But when imported to other programs then _balance can't be changed

class BankAccount {
  BankAccount(this._balance);
  double _balance;

  void withdraw(double amt) {
    if (_balance - amt < 0) {
      print("Insuffiecient Funds");
    } else {
      _balance -= amt;
    }
  }

  void deposit(int amt) {
    _balance += amt;
  }

  void getDetails() {
    print("Total balance is $_balance");
  }
}
