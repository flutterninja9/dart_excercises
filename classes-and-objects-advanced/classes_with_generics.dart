// Generics helps us in writing code which is more re-usable
// Generics are <T>, where <T> is decided at runTime
//? T is not zaroori, we can use any letter as generic type

class EchoName<T> {
  final T _name;

  EchoName(this._name);

  T get echo => _name;
}

void main() {
  final nameA = EchoName("Anirudh");
  final nameB = EchoName(1243);
  print(nameA.echo);
  print(nameB.echo);
}
