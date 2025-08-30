import 'package:geolocator/geolocator.dart';
import 'package:logger/logger.dart';

class Location {
  late double latitude;
  late double longitude;
  var log = Logger();

  final LocationSettings locationSettings = const LocationSettings(
    accuracy: LocationAccuracy.low,
    distanceFilter: 100,
  );
  Future<void> getCurrentPosition() async {
    LocationPermission permission = await Geolocator.requestPermission();

    try {
      Position position = await Geolocator.getCurrentPosition(
          locationSettings: locationSettings);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      log.e(e);
    }
  }
}
