abstract class Shape {
  double get area;
  double get perimeter;
}

printArea(Shape shape) => print(shape.area);
printPerimeter(Shape shape) => print(shape.perimeter);
