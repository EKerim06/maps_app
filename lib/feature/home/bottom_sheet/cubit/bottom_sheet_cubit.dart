import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_maps_note/core/cache/hive/hive_local_storage_manager.dart';
import 'package:flutter_maps_note/core/models/local_storage_model/save_location.dart';

part 'bottom_sheet_state.dart';

///bottom sheet state managment
class BottomSheetCubit extends Cubit<BottomSheetState> {
  ///constr
  BottomSheetCubit() : super(const BottomSheetState());

  late final HiveManager _manager;

  ///save the location
  Future<void> saveLocation({required SaveLocation location}) async {
    await _manager.saveLocation(location: location);
  }
  
}
