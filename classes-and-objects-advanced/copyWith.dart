// copyWith() helps in copying objects in Dart
// Helps in implemenmting copy-behaviour in immutable classes
//! ?? is called if-null operator in Dart

class Credentials {
  const Credentials({this.email = '', this.password = ''});
  final String email;
  final String password;

  Credentials copyWith({String email, String password}) {
    return Credentials(
      // ?? means, set email to the fresh passed email if it is not null, else set it to the object's previous this.email
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  String toString() => 'Credentials($email,$password)';
}

void main() {
  // Create an empty creds object
  final creds = Credentials();
  // Now consider a scenario where we want to update the creds when user types in the email& password
  // We can't do by creds.email = 'iuhoi@gmail.com', coz. its final
  // In that case we make a copyWith() inside our class
  final updated_1 = creds.copyWith(email: 'anirudh!gmail.com');
  print(updated_1);
  final updated_2 = updated_1.copyWith(password: 'too-easy');
  print(updated_2);
  // And this makes copying objects much easier
}
