// Hascode of classes can be used to identify equality,
// Two same classes will always have same hashcodes
// That's why we can get help of packages such as Equatble for overrding hashcode method, for overriding Dart's default refrential equlity

import 'package:equatable/equatable.dart';

//  Equaatble class
//  Equatable automatically overrides the equality for us
class Cat extends Equatable {
  Cat({this.name});
  final String name;

  @override
  List<Object> get props => [name];
}

//! IMPORTANT
// Non equaatble class
// We will have to manually do the overrding hashcode thing
// We can also do the operator overriding thing, But it will then do not assign same hashcodes to same instances, Rather check equality based on parameters
// So, equality can be done by two methods, Overriding (==) operator or Overrding (hashCode) method

class NonEqCat {
  NonEqCat({this.name});
  final String name;
}

void main() {
  final catA = Cat(name: 'Bob');
  final catB = Cat(name: 'Tim');
  final catC = Cat(name: 'Bob');
  final nCatA = NonEqCat(name: 'Xavy');
  final nCatB = NonEqCat(name: 'Jimmy');
  final nCatC = NonEqCat(name: 'Xavy');
  // It will result in perfect output coz. extends equqtable
  print(catA == catB);
  print(catA == catC);
  print(catA.hashCode);
  print(catB.hashCode);
  print(catC.hashCode);
  // It will always result in false, coz. not extending equatable
  print(nCatA == nCatB);
  print(nCatA == nCatC);
  print(nCatA.hashCode);
  print(nCatB.hashCode);
  print(nCatC.hashCode);
}
