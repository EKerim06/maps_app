import 'package:shared_preferences/shared_preferences.dart';

///Manage to shared Preferences service
abstract class SharedPreferencesManager {
  ///SharedPreferencesManager constructor
  SharedPreferencesManager({required this.manager});

  ///Shared Preferences instance
  final SharedPreferences manager;

  ///set onboarding page set data
  Future<void> setOnboardingPageShowState({required bool isValue});

  ///get onboarding page get data
  Future<bool> getOnboardingPageShowState();
}
