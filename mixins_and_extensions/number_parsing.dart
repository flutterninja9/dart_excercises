extension NumberParsing on String {
  int? toIntOrNull() => int.tryParse(this);
}

extension EverythingBecomesBulla on String {
  String toBulla() => "Bulla";
}
