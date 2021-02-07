// This program will help us understand the importane of toString(), And how to make it available inside our own classes
// As all the classes are also the base-class of Object type in Dart, We can override the toString method

class Point {
  const Point({required this.x, required this.y});
  final int x;
  final int y;

  @override
  toString() => 'Point($x,$y)';
}

void main() {
  const point = Point(x: 4, y: 6);
  print(point);
}
