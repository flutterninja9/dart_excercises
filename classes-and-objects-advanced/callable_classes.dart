// Callable classes is just a fancy word for the inbuilt call() function inside the Classes
// Due to this we can use the object instatiated as a function

class Echo {
  call() => print('Hey, I will run, when class is printed');
}

void main() {
  final echo = Echo();
  // Will give compile-time error, if there is no call() defined inside the Echo() class
  echo();
}
