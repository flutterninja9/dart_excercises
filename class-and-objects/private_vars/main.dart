import 'libs/bankDetails.dart';

void main() {
  final account = BankAccount(100);
  account.getDetails();
  // Now we cannot change the balance from this file
  // So below c ode won't work
  // account.balance = 1000
  account.deposit(1000);
  account.getDetails();
  account.withdraw(1101);
  account.getDetails();
}
