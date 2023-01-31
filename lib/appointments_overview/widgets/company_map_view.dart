import 'dart:async';
import 'dart:io';

import 'package:appointment_management/dependency_injection.dart';
import 'package:appointment_management/models/company.dart';
import 'package:appointment_management/settings/bloc/settings_cubit.dart';
import 'package:appointment_management/settings/bloc/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class CompanyMapView extends StatefulWidget {
  const CompanyMapView({
    Key? key,
    required this.company,
  }) : super(key: key);
  final Company company;

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

  static Future<void> openNavigation(
    BuildContext context,
    double lat,
    double lng,
  ) async {
    if (Platform.isAndroid) {
      final url = 'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
      await launchUrl(
        Uri.parse(url),
        mode: LaunchMode.externalNonBrowserApplication,
      );
    } else {
      final url = 'https://maps.apple.com/?q=$lat,$lng';
      await launchUrl(
        Uri.parse(url),
        mode: LaunchMode.externalNonBrowserApplication,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsCubit, SettingsState>(
      listener: (context, state) {
        _setMapStyle(state.darkTheme);
      },
      child: FutureBuilder<LatLng?>(
        future: DependencyInjection.locationGeocoderService
            .getCoordinates(widget.company),
        builder: (BuildContext context, AsyncSnapshot<LatLng?> snapshot) {
          if (snapshot.data == null) {
            return Container();
          }
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
              target: snapshot.data!,
              zoom: 14.4746,
            ),
            markers: {
              Marker(
                markerId: MarkerId(widget.company.id),
                position: snapshot.data!,
              )
            },
            onMapCreated: (GoogleMapController controller) {
              _setMapStyle(
                Theme.of(context).brightness == Brightness.dark,
              );
              _controller.complete(controller);
            },
            onTap: (_) => openNavigation(
              context,
              snapshot.data!.latitude,
              snapshot.data!.longitude,
            ),
          );
        },
      ),
    );
  }
}
