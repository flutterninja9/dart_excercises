Future<void> countDown({required int upNum}) async {
  for (int i = upNum; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1), () => print(i));
  }
}

// Driver code
main() async {
  print('Started');
  try {
    await countDown(upNum: 10);
  } catch (e) {
    print(e);
  } finally {
    print('Time Over!');
  }
}
