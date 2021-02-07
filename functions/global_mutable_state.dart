// A function can have a side effect if it is able to modify contents present out of its scope
// And functions which do these kinds of things are **not pure**
// Pure functions is a functions which alwys produces the same results, when called with the same arguemnts
// So it is a good programming practice to not to use much of global modifiabe variables

int counter = 1;

void foo() {
  print("*" * counter);
  counter++; // this is not a pure function coz. it is able to change the value of counter var
}

void main() {
  foo();
  foo();
  foo();
  foo();
}
