// Inheritence means a derrieved class extending from a base class will have all the features from the base class

class Animal {
  void sleep() => print('Sleep');
}

class Dog extends Animal {
  void bark() => print('Bark');
}

class CleverDog extends Dog {
  void catchBall() => print('Catch the ball');
}

void main() {
  final animal = Animal();
  final dog = Dog();
  final cleverDog = CleverDog();
  animal.sleep();
  // As dog extends from animal , It will be able to access all the methods of Animal Class
  dog.bark();
  dog.sleep();
  // As cleverDog extends from Dog, It will be able to access all the methods from its superclasses(i.e: Dog & Animal)
  cleverDog.bark();
  cleverDog.catchBall();
  cleverDog.sleep();
}
