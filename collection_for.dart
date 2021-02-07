// Collection-for adds all the values in an iterable into the current iterable

void main() {
  var extraColors = ['maroon', 'grey'];
  var colors = [
    'green',
    'pink',
    for (var color in extraColors) color,
  ];
  print(colors);
}
