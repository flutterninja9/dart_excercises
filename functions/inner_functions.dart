// functions inside a function are called inner functions

void main() {
  int a = 10;
  void foo(int b) {
    print(
        a); // Now this functiuon can easily access a coz. function is defined inside the scope of a
    print(b);
  }

  foo(20);
}
