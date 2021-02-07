// Nesting together the coll-if and coll-for rules

void main() {
  var extraColors = ['maroon', 'grey'];
  var colors = [
    'green',
    'pink',
    for (var color in extraColors)
      if (color == 'grey') color,
  ];
  print(colors);
}
