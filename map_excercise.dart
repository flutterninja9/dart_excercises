const pizza_prices = {
  'margarita': 23.44,
  'pepproni': 34.22,
  'vegetarian': 13.54,
};

void main() {
  const order = ['vegetarian', 'pepproni', 'non-veg'];
  num net_total = 0;
  for (var item in order) {
    if (pizza_prices.containsKey(item)) {
      net_total += pizza_prices[item] as num;
    } else {
      print("NOTIFICATION : Stocks are out for $item");
    }
  }
  print("Your net total is $net_total dollars.");
}
