// We can use mixins to share functionality among multiple classes without code duplication
// Leads to shallow class hierarchies rather than Deep class hierarchies
// We can use clases as mixins but not mixins as classes, coz. mixins can't be instantiated
//! A drawback of mixin is that it can't have constructers

mixin Swim {
  void swim() => print('swimming');
}

class Animal {
  void breath() => print('breathing');
}

class Fish extends Animal with Swim {}

class Human extends Animal with Swim {}

void main() {
  //! Below line gives error
  //final swim = Swim();
  final Fish fish = Fish();
  final Human human = Human();
  // Now as we can see both human and fish can swim
  fish.swim();
  human.swim();
}
