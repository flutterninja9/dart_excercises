Future<String> getUserOrder(String name) {
  assert(name.isNotEmpty, 'Empty Order');
  return Future.delayed(
    Duration(seconds: 3),
    () => "$name Delivered",
  );
}

void main() async {
  // This method is good but not practical because if in some scenario we have to deal with multiple futures then we will end up in writing unreasonable code
  // For preventing us from this, We make use of async and await
  // See the program in async-await.dart
  print('Order taken');
  try {
    final orderStatus1 = await getUserOrder('Blackberry Pie');
    print(orderStatus1);
    final orderStatus2 = await getUserOrder('Macroni');
    print(orderStatus2);
  } catch (e) {
    // Catches the execptions ib b/w flow of code
    print(e);
  } finally {
    // Runs after each future has completed its execution
    print('All orders delivered');
  }
}
