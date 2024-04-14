// ignore_for_file: invalid_return_type_for_catch_error

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_maps_note/core/cache/shared_preferences/shared_preferences_service.dart';
import 'package:geolocator/geolocator.dart';

part 'location_state.dart';

///LocationCubit
class LocationCubit extends Cubit<LocationState> {
  ///Location Cubit Constructor
  LocationCubit({this.sharedPreferencesService}) : super(const LocationState());

  ///shared preferences instance
  final SharedPreferencesService? sharedPreferencesService;

  ///Control is permission granted
  Future<Position?> _checkPermission() async {
    final permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      await Geolocator.requestPermission();
    }
    emit(state.copyWith(isRequiredPermission: false));
    return Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.medium,
    ).catchError(print);
  }

  ///get location if allowed
  void permissionOK() {
    _checkPermission().then((data) {
      emit(state.copyWith(isLoadingFinish: true, isRequiredPermission: true));
      if (data == null) {
        emit(state.copyWith(isRequiredPermission: true));
        sharedPreferencesService?.setOnboardingPageShowState(isValue: true);
      } else {
        emit(state.copyWith(isRequiredPermission: false));
        print('location viewModel: $data');
        sharedPreferencesService?.setOnboardingPageShowState(isValue: false);
      }
    });
  }
}
