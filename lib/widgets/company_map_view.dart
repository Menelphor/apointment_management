import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CompanyMapView extends StatefulWidget {
  const CompanyMapView({
    Key? key,
    required this.coordinates,
  }) : super(key: key);
  final LatLng coordinates;

  @override
  State<CompanyMapView> createState() => _CompanyMapViewState();
}

class _CompanyMapViewState extends State<CompanyMapView>
    with WidgetsBindingObserver {
  GoogleMapController? _controller;

  late String _darkMapStyle;
  late String _lightMapStyle;

  Future _loadMapStyles() async {
    _darkMapStyle = await rootBundle.loadString('assets/map_styles/dark.json');
    _lightMapStyle =
        await rootBundle.loadString('assets/map_styles/light.json');
  }

  Future _setMapStyle(bool darkStyle) async {
    if (_controller != null) {
      if (darkStyle) {
        _controller!.setMapStyle(_darkMapStyle);
      } else {
        _controller!.setMapStyle(_lightMapStyle);
      }
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _loadMapStyles();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      myLocationEnabled: false,
      mapToolbarEnabled: false,
      myLocationButtonEnabled: false,
      buildingsEnabled: false,
      compassEnabled: false,
      indoorViewEnabled: false,
      rotateGesturesEnabled: false,
      scrollGesturesEnabled: false,
      tiltGesturesEnabled: false,
      trafficEnabled: false,
      zoomControlsEnabled: false,
      zoomGesturesEnabled: false,
      mapType: MapType.normal,
      initialCameraPosition: CameraPosition(
        target: widget.coordinates,
        zoom: 14.4746,
      ),
      markers: {
        Marker(
          markerId: MarkerId(widget.coordinates.hashCode.toString()),
          position: widget.coordinates,
        )
      },
      onMapCreated: (GoogleMapController controller) {
        _controller = controller;
        _setMapStyle(Theme.of(context).brightness == Brightness.dark);
      },
    );
  }
}
