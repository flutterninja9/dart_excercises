// Typedefs are used to set a name for some Function Type
// Makes code much cleaner
// Saves time
// Currently DART only supports Typedefs for functions

typedef Greet = String Function(String);

void main() {
  final sayHi = (name) => "Hello $name";
  greetUser(sayHi, 'Ninja');
}

void greetUser(Greet body, name) {
  print(body(name));
  print("Welcome to the course");
}
