// ignore: lines_longer_than_80_chars
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

///Home Page View
///show Maps
class HomePageView extends StatefulWidget {
  ///HomePageViewModel Constructor
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => MapSampleState();
}

///Home Page State
class MapSampleState extends State<HomePageView> {
  ///example
  final CameraPosition cmp = CameraPosition(
      target: LatLng(37.566463930332816, 36.937840311064676), zoom: 12);

  @override
  Widget build(BuildContext context) {
    return GoogleMap(initialCameraPosition: cmp);
  }
}
