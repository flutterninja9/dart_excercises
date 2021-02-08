// Equatable not only helps in overrding refrential equality,
// It can also help in overrding the toString method(),
// Let's see how???

import 'package:equatable/equatable.dart';

//  Equaatble class
//  Equatable automatically overrides the equality for us
class Cat extends Equatable {
  Cat({this.name});
  final String name;

  //? hasCode() overriden here
  @override
  List<Object> get props => [name];

  //? toSring() overriden here
  @override
  bool get stringify => true;
}

void main() {
  print(Cat(name: 'Bob') == Cat(name: 'Bob'));
  // See how simple and amazing this package is!!!
  print(Cat(name: 'Xavy'));
}
