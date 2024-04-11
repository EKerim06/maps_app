import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_maps_note/core/cache/shared_preferences/shared_preferences_manager.dart';
import 'package:flutter_maps_note/core/cache/shared_preferences/shared_preferences_service.dart';
import 'package:flutter_maps_note/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_state.dart';

///Splash screen logic manage
/// Splash screen logic manage
class SplashCubit extends Cubit<SplashState> {
  /// Splash screen cubit constructor
  SplashCubit({ required this.controller}) : super(const SplashState()) {
    checkSharedPrefencesOnboardControl();
  }

  late final AnimationController controller;

  /// Shared preferences logic to manage
  final SharedPreferencesManager sharedPreferencesManager =
      SharedPreferencesService(manager: getIt<SharedPreferences>());

  /// Local db read
  Future<void> checkSharedPrefencesOnboardControl() async {
    final data = await sharedPreferencesManager.getOnboardingPageShowState();
    emit(state.copyWith(isContinue: data));
  }


  ///anim state controller
  void animationControl() {
    print(controller.isCompleted);
    emit(state.copyWith(isAnimFinished: controller.isCompleted));
  }
}
