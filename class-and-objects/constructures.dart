class BankAccount {
  //! First way of doing it by Default Constructur : BankAccount(int balance) { this.balance = balance; }
  //! Second way of doing it by initializer list : BankAccount(int balance) : balance = balance;
  //* Best way
  BankAccount({this.balance, this.accountMaster});
  int balance;
  String accountMaster;
  void withDraw(int amt) {
    balance -= amt;
  }

  void getAccDetails() {
    print("Account of $accountMaster & present balance is $balance");
  }
}

void main() {
  BankAccount _account =
      BankAccount(balance: 100, accountMaster: 'Raghav Sharma');
  print(_account.balance);
  _account.withDraw(50);
  print(_account.balance);
  _account.getAccDetails();
}
