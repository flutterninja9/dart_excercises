// enums are helpful where we have only some pre-defined set of values
// Like in switch statements
enum Operations {
  add,
  subtract,
  divide,
  multiply,
  noOperation,
}

void main() {
  const a = 10;
  const b = 4;
  final operation = Operations.add;
  switch (operation) {
    case Operations.add:
      print(a + b);
      break;
    case Operations.subtract:
      print(a - b);
      break;
    case Operations.divide:
      print(a / b);
      break;
    case Operations.multiply:
      print(a * b);
      break;
    case Operations.noOperation:
      print("No operations!");
      break;
  }
}
