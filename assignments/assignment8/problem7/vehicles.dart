class Vehicles{
  late String _plateName;
  Vehicles({required String plateName}): _plateName = plateName;

  String get plateName => _plateName;

  double getParkingFee(){
    return 50;
  }
}