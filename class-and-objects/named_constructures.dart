// Constructures are of 3 types ;
// 1. Default Constructures
// 2. Named Constructres
// 3. factory constructers

// Named constructres can be used in a case where you want to pre-define a class's instance inside the class iteself
// More expressive way of creating instances of your classes

class Person {
  Person({
    required this.age,
    required this.name,
  });
  // Now here Anirudh is Predefined and we can use it wherever we want without even defining it again
  Person.Anirudh()
      : name = "Anirudh",
        age = 23;
  final String name;
  final int age;
}

void main() {
  final _ani = Person.Anirudh();
  print(_ani.name);
}
