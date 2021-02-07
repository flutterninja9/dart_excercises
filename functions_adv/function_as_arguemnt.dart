void main() {
  final sayHi = (name) => "Hello $name";
  greet(sayHi, 'Anirudh');
}

void greet(String Function(String) initGreet, String name) {
  print(initGreet(name));
  print("Welcome to this course");
}
