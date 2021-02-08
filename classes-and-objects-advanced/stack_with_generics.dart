// Witness the power of Stack using generics

class Stack<T> {
  final List<T> _stack = [];

  void push(T entryToPush) {
    _stack.add(entryToPush);
  }

  T pop() => _stack.removeLast();
}

void main() {
  // Stack of int
  final stack = Stack<int>();
  stack.push(10);
  stack.push(20);
  stack.pop();
  print(stack._stack);
  // Stack of String
  final stackII = Stack<String>();
  stackII.push('sa');
  stackII.push('sb');
  stackII.pop();
}
