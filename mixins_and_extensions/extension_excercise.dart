// Implement a rangeTo() extension on int which can print all values upto that range
extension NumParse on int {
  List<int> rangeTo(int upperLimit) {
    List<int> result;
    result = [];
    if (upperLimit >= this) {
      for (var i = this + 1; i <= upperLimit; i++) {
        result.add(i);
      }
    }
    return result;
  }
}

void main() {
  for (var i in 1.rangeTo(5)) {
    print(i);
  }
}
