// ignore: lines_longer_than_80_chars
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_maps_note/constants/enum/base_url.dart';
import 'package:flutter_maps_note/constants/enum/search_endpoint.dart';
import 'package:flutter_maps_note/core/cache/hive/hive_local_storage_manager.dart';
import 'package:flutter_maps_note/core/cache/hive/hive_local_storage_service.dart';
import 'package:flutter_maps_note/feature/home/bottom_sheet/custom_bottom_sheet.dart';
import 'package:flutter_maps_note/feature/home/cubit/home_cubit.dart';
import 'package:flutter_maps_note/feature/home/custom_search_delegate/custom_search_delegate.dart';
import 'package:flutter_maps_note/models/google_maps_one_search_model/google_maps_search_model.dart';
import 'package:flutter_maps_note/services/google_maps/search/google_maps_one_search_network.dart';
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
  late final TextEditingController searchController;

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
    viewModel = HomeCubit(service, context);

    viewModel.markersCreate();

    formKey = GlobalKey<FormState>();
    searchController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => viewModel,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          automaticallyImplyLeading: false,
          title: const Text('Maps Note'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () async {
                final result = await showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
                if (result != null) {
                  final location = result.candidates?.first.geometry?.location;
                  _goToLocation(
                    LatLng(location?.lat ?? 0.0, location?.lng ?? 0.0),
                  );
                }
              },
            ),
          ],
        ),
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
                  // Positioned(
                  //   top: 6, // Üst kenardan 8 birim mesafede
                  //   left: 8, // Sol kenardan 8 birim mesafede
                  //   right: 64, // Sağ kenardan 8 birim mesafede
                  //   child: Card(
                  //     elevation: 4,
                  //     child: Padding(
                  //       padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  //       child: Row(
                  //         children: [
                  //           Expanded(
                  //             child: TextFormField(
                  //               controller:
                  //                   searchController, // TextEditingController'ı buraya atıyoruz
                  //               decoration: InputDecoration(
                  //                 hintText: 'Ara...',
                  //                 border: InputBorder.none,
                  //               ),
                  //               onFieldSubmitted: (value) {
                  //                 // Arama yapılacak işlemler buraya eklenebilir

                  //               },
                  //             ),
                  //           ),
                  //           IconButton(
                  //             icon: const Icon(Icons.search),
                  //             onPressed: () {
                  //               // Arama butonuna basılınca burada ne yapılacağı belirlenebilir
                  //               print('Arama butonuna basıldı');
                  //             },
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
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

  void _goToLocation(LatLng location) {
    setState(() {
      cmp = CameraPosition(
        target: location,
        zoom: 16,
      );
      locationSelectMarker = Marker(
        markerId: const MarkerId('searchedLocation'),
        position: location,
      );
    });
  }
}
