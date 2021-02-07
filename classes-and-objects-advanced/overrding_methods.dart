/// methods_overriding is very useful for extending features of a methods,
/// without actually disturbing its original implementation in its superclass

class Animal {
  void sleep() => print('Sleep');
}

class Dog extends Animal {
  // This overrides the original sleep function
  // Now whenever sleep() will be called on Dog, It will result in Dog sleeps, not only sleeps.
  // See how magical it is!
  @override
  void sleep() {
    print("Dog sleeps.");
  }

  void bark() => print('Bark');
}

class CleverDog extends Dog {
  @override
  void bark() {
    print("Dog barks!");
  }

  void catchBall() => print('Catch the ball');
}

void main() {
  final animal = Animal();
  final dog = Dog();
  animal.sleep();
  // As we have overridden the original method, Now result will be Dog Sleeps
  dog.sleep();
}
