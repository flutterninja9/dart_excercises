// This program has other factory constructurs of streams

main(List<String> args) async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5]);
  final stream2 = Stream<int>.fromFuture(Future.value(69));
  final stream3 = Stream<int>.fromFutures([
    Future.value(100),
    Future.value(101),
    Future.value(102),
    Future.value(103),
  ]);
  final stream4 = Stream<int>.periodic(Duration(seconds: 1), (num) => 1);

  await stream.forEach((element) {
    print(element);
  });
  await stream2.forEach((element) {
    print(element);
  });
  await stream3.forEach((element) {
    print(element);
  });
  // Will print 1 after intervals of 1 second
  // await stream4.forEach((element) {
  //   print(element);
  // });
}
