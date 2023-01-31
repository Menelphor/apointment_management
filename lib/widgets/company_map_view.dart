import 'dart:async';

import 'package:appointment_management/settings/bloc/settings_cubit.dart';
import 'package:appointment_management/settings/bloc/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  late String _darkMapStyle;
  late String _lightMapStyle;

  Future _loadMapStyles() async {
    _darkMapStyle = await rootBundle.loadString('assets/map_styles/dark.json');
    _lightMapStyle =
        await rootBundle.loadString('assets/map_styles/light.json');
  }

  Future _setMapStyle(bool darkStyle) async {
    final controller = await _controller.future;
    if (darkStyle) {
      controller.setMapStyle(_darkMapStyle);
    } else {
      controller.setMapStyle(_lightMapStyle);
    }
  }

  @override
  void initState() {
    super.initState();
    _loadMapStyles();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsCubit, SettingsState>(
      listener: (context, state) {
        _setMapStyle(state.darkTheme);
      },
      child: GoogleMap(
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
          _setMapStyle(
            Theme.of(context).brightness == Brightness.dark,
          );
          _controller.complete(controller);
        },
      ),
    );
  }
}
