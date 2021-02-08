double findArea({double height, double width}) {
  return height * width;
}

void main() {
  double area = findArea(height: 23.44, width: 14);
  print(area);
}
