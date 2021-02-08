// Objects to use after try {} block
// on exception_name : If you know what exception will come
// catch(exception) : If you don't know what exception will arise
// Using the stactrace we can know about the events which occured just before the exception was thrown
// finally clause : statements under the finally clause are always executed wheater there is any exception or not
// Creating our own Custom Exception Classes

void main() {
  print("CASE 1");
  try {
    int result = 12 ~/ 0;
    print(result);
  } on IntegerDivisionByZeroException {
    print("Infinity");
  }

  print("\nCASE 2");
  try {
    int result = 12 ~/ 0;
    print(result);
  } catch (e) {
    print("The exception thrown is $e");
  }

  print("\nCASE 3");
  try {
    int result = 12 ~/ 0;
    print(result);
    // here s is the stacktrace object
  } catch (e, s) {
    print("The exception thrown is $e");
    print("The Stacktrace is $s");
  }

  print("\nCASE 4");
  try {
    int result = 12 ~/ 3;
    print(result);
  } catch (e) {
    print("The exception thrown is $e");
  } finally {
    print("I will always be executed!");
  }

  print("\nCASE 5");
  try {
    int amount = 0;
    deposit(amount: amount);
  } on DepositException {
    DepositException depositException = new DepositException();
    print(depositException.errorMessage());
  }
}

class DepositException implements Exception {
  String errorMessage() {
    return "Amount can\'t be less than 0";
  }
}

void deposit({int amount}) {
  amount <= 0
      ? throw new DepositException()
      : print("Amount deposited successfully!");
}
