typedef Sum = int Function(int, int);
typedef Product = int Function(int, int);

final sum = (int a, int b) => a + b;
final product = (int a, int b) => a * b;

void sumAndProduct(Sum sum, Product product, a, b) {
  print("Sum of $a and $b is ${sum(a, b)}");
  print("Product of $a and $b is ${product(a, b)}");
}

void main() {
  sumAndProduct(sum, product, 10, 20);
}
