// This program is all about understanding the difference between extends and implements keywords
// The difference is basic, A class can extend to only one class, But can implement more than one class
// For e.g: see the below code

abstract class InterfaceA {
  void a();
}

abstract class InterfaceB {
  void B();
}
//? This line gives error coz. of the extends keyword
//! class Subclass extends InterfaceA,InterfaceB {}

//? Now replacing extends, with implements, See now no error comes
class Subclass implements InterfaceA, InterfaceB {
  @override
  void B() {}

  @override
  void a() {}
}

// Talking about other important difference,

abstract class Base {
  void foo(); // abstract method
  void bar() =>
      print('bar'); //* Not a good practice, but we did it just for example
}

//? Now if we use extends,We will only override the abstract methods present in base class
class SubclassA extends Base {
  @override
  void foo() {}
}

//? But, if we will use implements, We will have to override all the methods, weather abstract or pre-defined
class SubclassB implements Base {
  @override
  void bar() {}

  @override
  void foo() {}
}
