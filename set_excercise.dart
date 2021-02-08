// Write a function which gives elements belonging to setA or setB , but not both

Set<int> getResult({Set<int> setA, Set<int> setB}) {
  Set<int> tempA = setA.difference(setB);
  Set<int> tempB = setB.difference(setA);
  Set<int> resultSet = tempA.union(tempB);
  return resultSet;
}

// Driver code

void main() {
  Set<int> setA = {1, 2, 3, 4, 5};
  Set<int> setB = {4, 5, 6, 7, 8, 9};
  Set<int> result = getResult(setA: setA, setB: setB);
  print(result);
}
