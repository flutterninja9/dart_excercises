void main() {
  Map<String, dynamic> userDetails = {
    'userName': 'raghav_rockstar',
    'address': 'Near NYC, Sector B',
    'contact': '8827364581',
    'password': 'newYearOP',
  };
  print("================= OPERATIONS IN MAPS ====================");
  print(userDetails.entries);
  print(userDetails.containsKey('userName'));
  var name =
      userDetails['userName'] as String; // for typecasting dynamic into String
  print(name.toUpperCase());

  print("================= ITERATING IN MAPS ====================");
  // Iterating through a loop
  for (var details in userDetails.keys) {
    print(userDetails[details]);
  }
}
