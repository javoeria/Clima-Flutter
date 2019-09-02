import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longidute;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longidute = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
