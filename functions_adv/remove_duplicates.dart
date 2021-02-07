// Program for removing duplicates from a string

String removeDuplicates(String string) {
  var tempList = string.split('');
  var cleanList = tempList.map((listItems) => listItems).toSet();
  var result = cleanList.join('');
  return result;
}

void main() {
  const string = "hello radheyshyam";
  print(removeDuplicates(string));
}
