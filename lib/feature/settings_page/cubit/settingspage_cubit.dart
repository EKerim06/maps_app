import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_maps_note/core/cache/shared_preferences/shared_preferences_manager.dart';
import 'package:flutter_maps_note/core/cache/shared_preferences/shared_preferences_service.dart';
import 'package:flutter_maps_note/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'settingspage_state.dart';

class SettingspageCubit extends Cubit<SettingsPageState> {
  SettingspageCubit() : super(const SettingsPageState()) {
    _checkSharedPrefencesEndpointControl();
  }

  final SharedPreferencesManager sharedPreferencesManager =
      SharedPreferencesService(manager: getIt<SharedPreferences>());

  Future<void> _checkSharedPrefencesEndpointControl() async {
    final data = await sharedPreferencesManager.getSearchEndPont();
    emit(state.copyWith(isSelectedEndpoint: data));
  }
  
}
