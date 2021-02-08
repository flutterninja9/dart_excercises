// Witness the power of Stack using generics

class Stack<T> {
  final List<T> _stack = [];

  void push(T entryToPush) {
    _stack.add(entryToPush);
  }

  T pop() => _stack.removeLast();
}

void main() {
  final stack = Stack<int>();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.pop();
  print(stack._stack);
  final stackII = Stack<String>();
  stackII.push('sa');
  stackII.push('sb');
  stackII.push('sc');
  stackII.push('sd');
  stackII.pop();
  print(stackII._stack);
}
