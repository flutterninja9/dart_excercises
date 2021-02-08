import 'dart:convert';

class User {
  final String username;
  final String address;
  final String contact;
  final String uid;
  final String first_name;
  final String last_name;
  final int age;
  User({
    this.username,
    this.address,
    this.contact,
    this.uid,
    this.first_name,
    this.last_name,
    this.age,
  });

  User copyWith({
    String username,
    String address,
    String contact,
    String uid,
    String first_name,
    String last_name,
    int age,
  }) {
    return User(
      username: username,
      address: address,
      contact: contact,
      uid: uid,
      first_name: first_name,
      last_name: last_name,
      age: age,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'address': address,
      'contact': contact,
      'uid': uid,
      'first_name': first_name,
      'last_name': last_name,
      'age': age,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      username: map['username'],
      address: map['address'],
      contact: map['contact'],
      uid: map['uid'],
      first_name: map['first_name'],
      last_name: map['last_name'],
      age: map['age'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(username: $username, address: $address, contact: $contact, uid: $uid, first_name: $first_name, last_name: $last_name, age: $age)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is User &&
        o.username == username &&
        o.address == address &&
        o.contact == contact &&
        o.uid == uid &&
        o.first_name == first_name &&
        o.last_name == last_name &&
        o.age == age;
  }

  @override
  int get hashCode {
    return username.hashCode ^
        address.hashCode ^
        contact.hashCode ^
        uid.hashCode ^
        first_name.hashCode ^
        last_name.hashCode ^
        age.hashCode;
  }
}
