typedef MultiplierFunction = int Function(int);

void main() {
  List<int> result = transform([1, 2, 3, 4, 5, 6], (x) => x * 2);
  // Now this one has amazing power of code-reuasblity
  // List<int> result2 = transform([1, 2, 3, 4, 5, 6], (x) => x * 3);
  // List<int> result3 = transform([1, 2, 3, 4, 5, 6], (x) => x * 4);
  print(result);
}

// Generic way of using a function
// Less code-reusability
List<int> doubleItems(List<int> items) {
  List<int> result = [];
  for (var item in items) {
    result.add(item * 2);
  }
  return result;
}

// A better approach using the anonymous functions
// Using higher-order functions
List<int> transform(List<int> items, MultiplierFunction func) {
  List<int> result = [];
  items.map((item) => result.add(func(item))).toList();
  return result;
}
