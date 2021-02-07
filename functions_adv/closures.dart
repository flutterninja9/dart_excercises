// Closures are closely related to the anonymous functions
void main() {
  const multiplier = 1.5;
  var nums = [12, 33, 21];
  final result = nums.map((num) =>
      num *
      multiplier); // returns a closure and if we look closely we have a anonymous fxn. inside map function
  print(result);
}
