import 'package:appointment_management/config/base_config.dart';
import 'package:appointment_management/models/company.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location_geocoder/location_geocoder.dart';

class LocationGeocoderService {
  LocationGeocoderService();

  final cache = <Company, LatLng>{};
  final LocatitonGeocoder geocoder = LocatitonGeocoder(googleMapsApiKey);

  Future<LatLng?> getCoordinates(Company company) async {
    if (cache[company] == null) {
      final addresses = await geocoder.findAddressesFromQuery(company.address);
      if (addresses.isNotEmpty) {
        final coordinates = addresses.first.coordinates;
        if (coordinates.latitude != null && coordinates.longitude != null) {
          cache[company] = LatLng(
            coordinates.latitude!,
            coordinates.longitude!,
          );
        }
      }
    }
    return cache[company];
  }
}
