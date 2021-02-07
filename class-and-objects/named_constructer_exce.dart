class Temprature {
  Temprature.celcius(this.celcius);
  Temprature.fahrenheit(double fahren) : celcius = (fahren - 32) / 1.8;
  double celcius;
}

void main() {
  final tempA = Temprature.celcius(45);
  final tempB = Temprature.fahrenheit(90);
}
