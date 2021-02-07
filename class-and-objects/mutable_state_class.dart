// Here the data is easliy changing and can be changed from wherever the user wants, And it is not correct sometimes

class UserDetails {
  UserDetails({
    required this.name,
    required this.age,
  });
  String name;
  int age;
}

void main() {
  var userData = UserDetails(name: 'Anirudh', age: 23);
  print(userData.name);
  userData.name = "Raghav";
  print(userData.name);
}
