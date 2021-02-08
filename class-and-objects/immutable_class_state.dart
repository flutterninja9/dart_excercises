// Here the data is easliy changing and can be changed from wherever the user wants, And it is not correct sometimes

class UserDetails {
  UserDetails({
    this.name,
    this.age,
  });
  final String name;
  int age;
}

void main() {
  var userData = UserDetails(name: 'Anirudh', age: 23);
  print(userData.name);
  // Now age became immutable
  //! Below line won't work
  //userData.name = "Raghav";
  print(userData.name);
}
