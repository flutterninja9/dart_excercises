import 'dart:async';

void main() {
  Stream<int> intStream() async* {
    for (int i = 0; i < 10; i++) {
      Future.delayed(Duration(seconds: 1), () async* {
        yield i;
      });
    }
  }

  sumStream(int num) {
    int sum = 0;
    sum += num;
    print(sum);
  }

  var integer = intStream();
  integer.listen((event) {
    sumStream(event);
  });
}
