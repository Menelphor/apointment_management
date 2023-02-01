import 'package:appointment_management/dependency_injection.dart';
import 'package:appointment_management/models/company.dart';
import 'package:appointment_management/widgets/company_map_view.dart';
import 'package:appointment_management/config/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapCard extends StatelessWidget {
  const MapCard({
    Key? key,
    required this.company,
  }) : super(key: key);

  final Company company;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<LatLng?>(
      future: DependencyInjection.locationGeocoderService.getCoordinates(
        company,
      ),
      builder: (BuildContext context, AsyncSnapshot<LatLng?> snapshot) {
        return ClipRRect(
          borderRadius: Dimensions.cardRadius,
          child: SizedBox(
            height: 240,
            child: snapshot.data == null
                ? null
                : CompanyMapView(coordinates: snapshot.data!),
          ),
        );
      },
    );
  }
}
