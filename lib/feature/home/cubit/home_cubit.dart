// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:flutter_maps_note/core/cache/hive/hive_local_storage_manager.dart';
import 'package:flutter_maps_note/core/models/local_storage_model/save_location.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this.manager,
  ) : super(const HomeState());

  final HiveManager manager;

  List<SaveLocation?>? _fetchSavedData() {
    return manager.getAllLocation();
  }

  void markersCreate() {
    final savedLocationList = _fetchSavedData();

    late final markerList = <Marker>{};

    late final cirlceList = <Circle>{};

    if (savedLocationList?.isNotEmpty ?? false) {
      for (final element in savedLocationList!) {
        markerList.add(
          Marker(
            markerId: MarkerId(element!.name),
            position: LatLng(element.latitude, element.longitude),
            infoWindow: InfoWindow(
              title: element.name,
              snippet: element.distance.toString(),
            ),
          ),
        );
        cirlceList.add(
          Circle(
            circleId: CircleId(element.name),
            center: LatLng(element.latitude, element.longitude),
            radius: element.distance.toDouble(),
            strokeColor: Colors.red,
            fillColor: Colors.red.shade100.withOpacity(0.4),
            strokeWidth: 1,
          ),
        );
      }
    }
    emit(state.copyWith(creatingCircles: cirlceList));
    emit(state.copyWith(fetchingMarker: markerList));
  }
}
