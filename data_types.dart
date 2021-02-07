void main() {
  // this will never change its value
  final pi = 2.14;

  // This will automatically infer a dataype
  var name = "Anirudh";

  // This has the ability to chnage its value anytime
  dynamic radius = 34.55;
  radius = "NOT_AVAILABLE";

  // Sets a compile time constant
  // Helps DART in better code-optimization & same as final in terms of work
  const alpha = 23.2154;
  print("Datatypes set successfully!");
}
