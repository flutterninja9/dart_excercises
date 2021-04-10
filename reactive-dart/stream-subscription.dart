import 'dart:async';

Stream<int> counterStream(int n) async* {
  for (int i = 1; i <= n; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1), () {});
  }
}

main(List<String> args) {
  final countStream = counterStream(10);
  StreamSubscription<int> counterStreamSubscription;

  counterStreamSubscription = countStream.listen((event) {
    print(event);
  });
}
