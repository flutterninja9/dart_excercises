import 'data/circle.dart';
import 'data/square.dart';
import 'domain/shape_usecase.dart';

void main() {
  final Shape square = Square(side: 12.33);
  final Shape circle = Circle(radius: 8.44);
  printArea(square);
  printArea(circle);
  printPerimeter(square);
  printPerimeter(circle);
}
