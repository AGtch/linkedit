import 'package:geolocator/geolocator.dart';

class LocationHelper {
  static final _instance = LocationHelper._internal();

  factory LocationHelper() => _instance;

  LocationHelper._internal();

  Future<Position?> getCurrentLocation() async {
    LocationPermission locationPermission =
        await Geolocator.requestPermission();
    if (locationPermission != LocationPermission.always &&
        locationPermission != LocationPermission.whileInUse) {
      return null;
    }

    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
  }
}
