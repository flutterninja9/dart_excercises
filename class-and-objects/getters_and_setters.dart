class Temprature {
  Temprature.celcius(this.celcius);
  Temprature.fahrenheit(double fahren) : celcius = (fahren - 32) / 1.8;
  double celcius;
  double get fahrenheit => (celcius * 1.8) - 32;
  set fahrenheit(double celcius) => celcius = (celcius - 32) / 1.8;
}

void main() {
  final tempA = Temprature.celcius(45);
  final tempB = Temprature.fahrenheit(90);
  print(tempB.celcius);
  print(tempA.fahrenheit);
  tempA.fahrenheit = 34;
}
