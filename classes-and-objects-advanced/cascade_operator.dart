// Cascade(..) operator is used in Dart to modify the properties of a mutable class
// Just makes your code a bit less lengthy by providing shorthand for assignment operator

import 'dart:math';

class ClosedPath {
  List<Point> _points = [];

  void moveTo(Point point) {
    _points = [point];
  }

  void lineTo(Point point) {
    _points.add(point);
  }
}

void main() {
  final closedPath = ClosedPath()
    ..moveTo(Point(0, 0))
    ..lineTo(Point(2, 0))
    ..lineTo(Point(2, 2))
    ..lineTo(Point(0, 2))
    ..lineTo(Point(0, 0));
  for (var point in closedPath._points) {
    print(point);
  }
}
