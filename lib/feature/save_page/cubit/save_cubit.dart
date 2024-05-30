import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_maps_note/core/cache/hive/hive_local_storage_manager.dart';
import 'package:flutter_maps_note/core/models/local_storage_model/save_location.dart';

part 'save_state.dart';

class SaveCubit extends Cubit<SaveState> {
  SaveCubit({required this.manager}) : super(const SaveState(isLoading: false));

  late final HiveManager manager;

  bool isLoading = false;

  void fetchData() {
    emit(state.copyWith(fetchingData: manager.getAllLocation()));
  }

  Future<void> deleteAllData() async {
    _changeLoad();
    await manager.allClear();
    // emit(state.copyWith(fetchingData: List.empty()));
    fetchData();
    _changeLoad();
  }

  void _changeLoad() {
    isLoading = !isLoading;
    emit(state.copyWith(isLoading: isLoading));
  }

  Future<void> deleteSelectedLocation({required SaveLocation location}) async {
    _changeLoad();
    await manager.removeSelectedLocation(location: location);
    fetchData();
    _changeLoad();
  }

}
