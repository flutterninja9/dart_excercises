// List represent a collection of values

void main() {
  // We can eforce rules on the type accepted by List
  List<String> cities = [
    'Allahabad',
    'Mathura',
    'Varanasi',
  ];
  // for printing elements in a list
  print(cities);

  // For iterating on element6s of a list
  cities.map((e) => print(e)).toList();

  // Functions on a list
  print(cities.length);
  print(cities.reversed.toList());

  // Shorthad for iteration
  for (var city in cities) {
    print(city);
  }
}
