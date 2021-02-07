// spread (...) is an special operator in DART which treates values in iterable in a special way (i.e. individually)
// collection_if,coll_for and spread(...) are composable , it means we can nest them inside a collection

void main() {
  var extraColors = ['yellow', 'orange', 'grey'];
  var colors = [
    'green',
    'pink',
    ...extraColors,
  ];
  print(colors);
}
