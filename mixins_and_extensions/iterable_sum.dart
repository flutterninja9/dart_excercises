// Want to apply an extension to all the sub-classes of a base-class
// Make use of a generic type constraint
// You can do this by <T extends base_class>
// Package Dartx provides more of such helpful extensions, Make sure to use it & go through the source code of it
extension SumIterableX<T extends num> on Iterable<T> {
  T sum() =>
      reduce((currElement, nextElement) => currElement + nextElement as T);
}

void main() {
  final int listSumA = [1, 2, 3].sum();
  final double listSumB = [1.0, 2.0, 3.2].sum();
  print(listSumA);
  print(listSumB);
}
