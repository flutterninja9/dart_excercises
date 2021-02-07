// scope is the block of clode present in between any pair of curly braces

int x = 20; // global scoped var and can be accessed everywhere

void main() {
  int a =
      5; // var declared inside the main() scope and can be accessed only inside the main function
  if (a == 5) {
    const b = 10;
    // a and b both can be accessed here
  }
  // only a can be accesed here
  // b would be treated as out of scope
}
