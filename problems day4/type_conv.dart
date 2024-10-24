void main() {
  //value is string and kilometer
  String distance = "5.5";

  // converting to double
  double double_distance = double.tryParse(distance)!;

  //converting to meters
  double distance_in_meter = double_distance * 1000;
  //printing in meters
  print(distance_in_meter);
}
