import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_maps_note/constants/utility/string_constants.dart';
import 'package:flutter_maps_note/core/cache/shared_preferences/shared_preferences_manager.dart';
import 'package:flutter_maps_note/feature/onboard_pages/welcome_to_app_page.dart';
import 'package:flutter_maps_note/feature/splash_screen/cubit/splash_cubit.dart';
import 'package:flutter_maps_note/utility/widget/bottom_bar/custom_bottombar.dart';
import 'package:flutter_maps_note/utility/widget/texts/normal_text.dart';
import 'package:gen/gen/assets.gen.dart';
import 'package:kartal/kartal.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_screen_mixin.dart';

///Splash View
class SplashPageView extends StatefulWidget {
  ///Splash View Constructor
  const SplashPageView({super.key});

  @override
  _SplashPageViewState createState() => _SplashPageViewState();
}

class _SplashPageViewState extends State<SplashPageView>
    with SingleTickerProviderStateMixin, SplashScreenMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => viewModel,
      child: Scaffold(
        // appBar: AppBar(),
        body: BlocConsumer<SplashCubit, SplashState>(
          listener: (context, state) {
            if (state.isContinue ?? false) {
              viewModel.getLocation();
              if (state.location != null) {
                context.route.navigateToPageAndRemove(
                  CustomBottomBar(location: state.location!),
                );
              }
            } else {
              context.route.navigateToPageAndRemove(
                const WelcomeToAppPage(),
              );
            }
          },
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.animations.mapsSplashScreenAnim.lottie(
                    package: 'gen',
                    height: context.sized.dynamicHeight(0.2),
                  ),
                  NormalText(message: StringConstants.splashScreenMessage),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
