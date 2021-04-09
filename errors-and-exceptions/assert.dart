/// We can make use of assert() in the initializer list of our defined class for fixing some concrete
/// rules that a class's variable needs to fulfill
/// Like here we have a class which accepts Positive Integers
/// assertions can be used to easily notify what went wrong, in the implementation
//! A point to note is that assertions are only enabled in debug mode not release mode. So it
//! is just a tool for programmers to catch their mistakes

class PositiveInt {
  /// { Passed number > 0 }
  /// Now unless and untill this consition would be fulfilled,
  /// This class will always throw an error
  const PositiveInt(this.value)
      : assert(
          value >= 0,
          'Value passed is not an integer',
        );

  final int value;
}

// Another functional example
// In functions assertions can be used as simple validators
// like in the example below

void signIn(String email, String password) {
  assert(email.isNotEmpty);
  assert(password.isNotEmpty);
}

void main() {
  // for getting compile time feedbacks
  const cInt = PositiveInt(2);

  // for getting runtime feedbacks
  final rInt = new PositiveInt(0);
  print(cInt);
  print(rInt);

  // Driver for second example
  signIn('', 'iuhku'); // => Throws error containing stacktrace
}
