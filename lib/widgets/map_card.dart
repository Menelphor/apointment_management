import 'package:appointment_management/widgets/company_map_view.dart';
import 'package:appointment_management/config/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapCard extends StatelessWidget {
  const MapCard({
    Key? key,
    required this.coordinates,
  }) : super(key: key);

  final LatLng? coordinates;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: Dimensions.cardRadius,
      child: SizedBox(
        height: 240,
        child: coordinates == null
            ? null
            : CompanyMapView(coordinates: coordinates!),
      ),
    );
  }
}
