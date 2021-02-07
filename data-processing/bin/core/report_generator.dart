Map<String, double> generateReport(List lines) {
  Map<String, double> activityMap = <String, double>{};
  lines.removeAt(0);
  for (var line in lines) {
    var formattedLine = line.split(',');
    final durationString = formattedLine[3].replaceAll('"', '');
    final duration = double.parse(durationString).roundToDouble();
    String tag = formattedLine[5].replaceAll('"', '');
    if (activityMap.containsKey(tag)) {
      var prevDuration = activityMap[tag];
      var newDuration =
          prevDuration == null ? duration : prevDuration + duration;
      activityMap[tag] = newDuration;
    } else {
      Map<String, double> data = {
        tag: duration,
      };
      activityMap.addAll(data);
    }
  }
  return activityMap;
}
