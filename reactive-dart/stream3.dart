main(List<String> args) async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5]);
  // final firstNum = await stream.first;
  // print(firstNum);
  // await stream.forEach((element) {
  //   print(element);
  // });
  final doubles = stream.map((value) => value * 2).where((event) => event > 3);
  await doubles.forEach(print);
}
