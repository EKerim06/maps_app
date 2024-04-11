part of 'splash_page_view.dart';

///Splash Screen mixin class
mixin SplashScreenMixin on State<SplashPageView>, TickerProvider {
  ///shared Preferernces instance get getIt
  late final SharedPreferences sharedPreferernces;

  /// shared Preferences Logic manage class
  late final SharedPreferencesManager manager;

  ///Splash Screen view model
  late final SplashCubit viewModel;

  ///animation state controller
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this);
    viewModel = SplashCubit(controller: controller);
  }

  ///animation state control metod
  // bool animFinished() {
  //   return controller.isCompleted;
  // }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }
}
