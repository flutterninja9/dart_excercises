class Point {
  Point({this.x, this.y});
  final int x;
  final int y;

  @override
  toString() => 'Point($x,$y)';

  @override
  bool operator ==(covariant Point other) {
    return x == other.x && y == other.y;
  }

  Point operator +(covariant Point other) {
    int sumX = x + other.x;
    int sumY = y + other.y;
    return Point(x: sumX, y: sumY);
  }

  Point operator *(covariant Point other) {
    int multX = x * other.x;
    int multY = y * other.y;
    return Point(x: multX, y: multY);
  }
}

void main() {
  final pointA = Point(x: 3, y: 5);
  final pointB = Point(x: 3, y: 5);
  final pointC = Point(x: 5, y: 2);
  // Testing toString() override
  print(pointA);
  // Testing == override
  print(pointA == pointB);
  // Testing + override
  print(pointA + pointC);
  // Testing - override
  print(pointA * pointC);
}
