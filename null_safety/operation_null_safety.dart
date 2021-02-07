void main() {
  int? a;
  int b = 2;
  // Dart is smart enough toknow this
  a == null ? print('a is null') : print(a + b);
}
