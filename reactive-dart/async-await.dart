Future<String> getUserOrder() => Future.delayed(
      Duration(seconds: 3),
      () => 'Blackberry Pie',
    );

void main() {
  // Taking the same example as previos one
  print('Order taken');
  getUserOrder()
      .then((order) => print('Your $order is ready!'))
      .catchError((error) => print(error))
      .whenComplete(() => print('Done'));
}
