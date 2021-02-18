// Helps in extending functionlaity of classes without actually modifying their original implementation
// Mostly used in altering Dart inbuilt types & Collections
// Extension makes autocomplete easier
// Extensions can only be imported if they have a name

import 'number_parsing.dart';

void main() {
  // As we know we use this to change an string to int
  // But, clearly its not that practical in terms of usability
  final testVar = int.tryParse('123');
  print(testVar);
  // A much better name or approach would look something like this
  print('231'.toIntOrNull());
  //! fun zone
  print('Anirudh'.toBulla());
}
