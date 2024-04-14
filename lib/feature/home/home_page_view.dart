// ignore: lines_longer_than_80_chars
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

///Home Page View
///show Maps
class HomePageView extends StatefulWidget {
  ///HomePageViewModel Constructor
  const HomePageView({
    required this.location,
    super.key,
  });

  ///Gettin location value
  final Position location;

  @override
  State<HomePageView> createState() => MapSampleState();
}

///Home Page State
class MapSampleState extends State<HomePageView> {
  ///example
  CameraPosition cmp = const CameraPosition(
    target: LatLng(37.566463930332816, 36.937840311064676),
    zoom: 12,
  );

  @override
  Widget build(BuildContext context) {
    print('home page build run');
    return SafeArea(
      child: GoogleMap(
        myLocationEnabled: true,
        initialCameraPosition: cmp,
        onTap: (location) {
          setState(() {
            print('click $location');
            cmp = CameraPosition(
              target: LatLng(location.latitude, location.longitude),
              zoom: 18,
            );
          });
        },
      ),
    );
  }
}
