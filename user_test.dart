import 'data_class.dart';

void main() {
  final Map<String, dynamic> rawUser = {
    "username": "anulives",
    "address": "Near Palika Bazaar, New Chouk , Delhi",
    "contact": "8726995152",
    "uid": "uioh1nnjknk2bjkbnm1mv",
    "first_name": "Anirudh",
    "last_name": "Singh",
    "age": 23,
  };
  User user = User.fromMap(rawUser);
  print(user.first_name);
  print(user.age);
  print(user.address);
}
