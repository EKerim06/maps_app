import 'package:flutter_maps_note/constants/enum/locale_cache_keys.dart';
import 'package:flutter_maps_note/core/cache/shared_preferences/shared_preferences_manager.dart';

///Shared Preferences logic
class SharedPreferencesService extends SharedPreferencesManager {
  ///SharedPreferences constructor
  SharedPreferencesService({required super.manager});

  @override
  Future<bool> getOnboardingPageShowState() async {
    final isControlData =
        manager.getBool(LocaleCacheKeys.SHARED_PREF_ONBOARD_PAGE_STATE.name);
    return isControlData ?? false;
  }

  @override
  Future<void> setOnboardingPageShowState({required bool isValue}) async {
    await manager.setBool(
      LocaleCacheKeys.SHARED_PREF_ONBOARD_PAGE_STATE.name,
      isValue,
    );
  }
  
}
