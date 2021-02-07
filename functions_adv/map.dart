// Map returns a LazyIterable , which means that anonymous fxn. is not evaluated untill the result is needed
// This helps in the performance optimization of your program
// Always remeber that map not returns a List , it returns an Iterable,

void main() {
  const listNums = [10, 20, 30, 40, 50];
  final result = listNums
      .map((listNum) => listNum)
      .toList(); // Iterable converted to a List
  print(result);
}
