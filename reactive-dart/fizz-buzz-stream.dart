String fizzBuzzLogic(int num) {
  if (num % 15 == 0) {
    return 'fizz buzz';
  } else if (num % 3 == 0) {
    return 'fizz';
  } else if (num % 5 == 0) {
    return 'buzz';
  } else
    return num.toString();
}

Stream<String> fizzBuzzStream(int toWhatNum) async* {
  for (int i = 1; i <= toWhatNum; i++) {
    yield fizzBuzzLogic(i);
    await Future.delayed(Duration(milliseconds: 500), () {});
  }
}

main() {
  final fizzBuzzStrm = fizzBuzzStream(20);
  // See how streams behave like Iterables
  fizzBuzzStrm.forEach((element) {
    print(element);
  });
}
