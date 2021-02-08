// Here we will try to understand the (==) or better known as equality operator in Dart
// Let's take the example of Point, again!!!

class Point {
  const Point({this.x, this.y});
  final int x;
  final int y;

  @override
  toString() => 'Point($x,$y)';

  //! @override
  //! bool operator ==(Object other) {
  //!   if (other is Point) {
  //!     return x == other.x && y == other.y;
  //!   } else {
  //!     return false;
  //!   }
  //! }
  //But as a programmer, we know the above code is quite bulky
  // So we make use of covarient keyword, To fix the operator overload onto a particular type
  // So instead of aboce function we can write
  //* It does the same as the above one, but better, And will only accept Object of Point type
  @override
  bool operator ==(covariant Point other) {
    return x == other.x && y == other.y;
  }
}

void main() {
  //TODO As DART only supports refrential equality, It will always say that these Points are not the same
  //TODO Because, it checks the equality by the address where this object is kept in the memory
  //? But, we can fix it by "Operator Overloading", as in the class above

  print(
      Point(x: 4, y: 6) == Point(x: 4, y: 6)); // Now here it will start working

  //! Gives error coz. of the covarient keyword we have used in the class
  //! print(Point(x: 4, y: 6) == 'abc');
}
