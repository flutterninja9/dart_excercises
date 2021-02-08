// This file will ensure that I understand the use of super() constructer used in class-defenition
// super() is the call to the constructer of the superclass
// super assistes in passing required values needed by its SuperClass

class Animal {
  Animal({this.age});
  final int age;
  void sleep() => print('Sleep');
}

class Dog extends Animal {
  Dog({int age}) : super(age: age);
  void bark() => print('Bark');
}

class CleverDog extends Dog {
  CleverDog({int age}) : super(age: age);
  void catchBall() => print('Catch the ball');
}

void main() {
  final animal = Animal(age: 10);
  final dog = Dog(age: 10);
  final cleverDog = CleverDog(age: 20);
  animal.sleep();
  // As dog extends from animal , It will be able to access all the methods of Animal Class
  dog.bark();
  dog.sleep();
  // As cleverDog extends from Dog, It will be able to access all the methods from its superclasses(i.e: Dog & Animal)
  cleverDog.bark();
  cleverDog.catchBall();
  cleverDog.sleep();
}
