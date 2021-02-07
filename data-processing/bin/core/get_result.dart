void printReport(Map<String, dynamic> result) {
  for (var key in result.keys) {
    key == ""
        ? print("Others -> ${result[key]} hours\n")
        : print("$key -> ${result[key]} hours\n");
  }
}
