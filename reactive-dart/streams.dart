/// In dart, Stream is a sequence of asynchronous events
/// We can consider a stream as an asynchronous iterable (simply something which can be iterated like list),
/// but elements are delivered over time rather than when we ask for the element

// Function which calculates sum of numbers in the stream

Future<int> sum(Stream<int> stream) async {
  assert(await stream.isEmpty, 'Stream is empty');
  return stream.reduce((previous, element) => previous + element);
}

Stream<int> countStream(int n) async* {
  for (int i = 1; i <= n; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1), () {});
  }
}

main(List<String> args) async {
  // Driver code for sum example
  //
  final stream = Stream<int>.fromIterable([1, 2, 3, 4]);
  try {
    final result = await sum(stream);
    print(result);
  } catch (e) {
    print(e);
  }

  // Driver code for countStream
  //
  final countStrm = countStream(10);
  countStrm.listen((event) {
    print(event);
  });
}
