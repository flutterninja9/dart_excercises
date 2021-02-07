import 'dart:math';

import '../domain/shape_usecase.dart';

class Circle extends Shape {
  Circle({required this.radius});
  final double radius;

  @override
  double get area => pi * pow(radius, 2);

  @override
  double get perimeter => 2 * pi * radius;
}
