// static vars or methods belong to the class itself, not its instance
// can be called directly without even creating the instance of the class

class Strings {
  static String greet = "Hello";
  static String welcome = "Welcome user";
  static String bye = "Bye User";

  static getUserDetails() {
    print("Hey user, I found out that you are amazing!");
  }
}

void main() {
  print(Strings.greet);
  print(Strings.welcome);
  print(Strings.bye);
  Strings.getUserDetails();
}
