import '../domain/shape_usecase.dart';

class Square extends Shape {
  Square({required this.side});
  final double side;

  @override
  double get area => side * side;

  @override
  double get perimeter => 4 * area;
}
