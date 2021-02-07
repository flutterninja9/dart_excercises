// Collection-if only adds a vlue to collection on a certain condition

void main() {
  var blue = false;
  var red = true;
  var colors = [
    'green',
    'pink',
    if (blue) 'blue',
    if (red) 'red',
  ];
  print(colors);
}
