// Here we are going to learn about abstract classes in Dart
// abstract classes are similiar to interfaces in other programming languages
// They don't actually contain the full-implementation, but only we say say like "CONTRACTS"
// Now, talking with Dart perspective
// abstract classes are classes that can't be instantiated
// abstract classes hold interfaces, their derrivatives hold actual implementation
//? helps in do-coupling of the code from its implementation

import 'dart:math';

abstract class Shape {
  double get area;
}

class Circle extends Shape {
  Circle({this.radius});
  final int radius;

  @override
  double get area => 3.14 * pow(radius, 2);
}

class Square extends Shape {
  Square({this.side});
  final double side;

  @override
  double get area => side * side;
}

//* Now the below function will tell you why is it useful to make use of abstract classes

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  //? Below line will say, Abstarct classes can't be instantiated
  //! final shape = Shape();
  final circle = Circle(radius: 21);
  final square = Square(side: 12.33);
  printArea(circle);
  printArea(square);
}
