// Helps in better code optimization
// Can be used only if the variables inside class are final

class Complex {
  const Complex({
    required this.im,
    required this.re,
  });
  final double re;
  final double im;
}

void main() {
  const complex = Complex(re: 2, im: 1);
  print(complex.re);
}
