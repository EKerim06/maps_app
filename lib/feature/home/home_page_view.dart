// ignore: lines_longer_than_80_chars
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_maps_note/core/cache/hive/hive_local_storage_manager.dart';
import 'package:flutter_maps_note/core/cache/hive/hive_local_storage_service.dart';
import 'package:flutter_maps_note/feature/home/bottom_sheet/custom_bottom_sheet.dart';
import 'package:flutter_maps_note/feature/home/cubit/home_cubit.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

///Home Page View
///show Maps
class HomePageView extends StatefulWidget {
  ///HomePageViewModel Constructor
  const HomePageView({
    required this.currentLocation,
    super.key,
  });

  ///Gettin location value
  final Position currentLocation;

  @override
  State<HomePageView> createState() => MapSampleState();
}

///Home Page State
class MapSampleState extends State<HomePageView> {
  ///example
  late CameraPosition cmp;

  /// example
  Marker? locationSelectMarker;

  late final HomeCubit viewModel;

  late final HiveManager service;

  ///manage to form inside text form fields areas
  late final GlobalKey<FormState> formKey;

  @override
  void initState() {
    super.initState();
    cmp = const CameraPosition(
      target: LatLng(37.566463930332816, 36.937840311064676),
      zoom: 12,
    );
    service = HiveService();
    viewModel = HomeCubit(service);

    viewModel.markersCreate();

    formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    print('home page build run');
    return BlocProvider(
      create: (context) => viewModel,
      child: Scaffold(
        body: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {
            state.fetchingMarker;
          },
          builder: (context, state) {
            return SafeArea(
              child: Stack(
                children: [
                  GoogleMap(
                    circles: locationSelectMarker != null
                        ? {}
                        : state.creatingCircles ?? {},
                    myLocationEnabled: true,
                    initialCameraPosition: cmp,
                    onTap: _onTap,
                    markers: locationSelectMarker != null
                        ? {locationSelectMarker!}
                        : state.fetchingMarker!,
                  ),
                  if (locationSelectMarker != null)
                    CustomDraggableScrollableSheet(
                      formKey: formKey,
                      location: LatLng(
                        locationSelectMarker!.position.latitude,
                        locationSelectMarker!.position.longitude,
                      ),
                    )
                  else
                    const SizedBox(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  ///Google maps on tap function
  void _onTap(LatLng latLng) {
    setState(() {
      print('click $latLng');
      cmp = CameraPosition(
        target: LatLng(latLng.latitude, latLng.longitude),
        zoom: 16,
      );
      locationSelectMarker =
          Marker(markerId: const MarkerId('a'), position: latLng);
    });
  }
}
