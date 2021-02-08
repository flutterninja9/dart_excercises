class Person {
  Person({
    this.age,
    this.height,
    this.name,
  });
  String name;
  double height;
  int age;

  // For printing the description of person
  void printDescription() {
    print("$name is $age years old and $height feet tall.");
  }
}

void main() {
  Person _personA = Person(name: 'Anirudh', age: 23, height: 6.3);
  Person _personB = Person(name: 'Deepak', age: 22, height: 5.9);
  _personA.printDescription();
  _personB.printDescription();
}
