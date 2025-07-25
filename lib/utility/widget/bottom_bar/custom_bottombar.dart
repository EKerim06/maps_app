import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_maps_note/core/localization/locale_keys.g.dart';
import 'package:flutter_maps_note/feature/home/home_page_view.dart';
import 'package:flutter_maps_note/feature/save_page/save_page.dart';
import 'package:flutter_maps_note/feature/settings_page/settings_page.dart';

import 'package:flutter_maps_note/utility/widget/bottom_bar/cubit/bottombar_view_model.dart';
import 'package:gen/gen/colors.gen.dart';
import 'package:geolocator/geolocator.dart';

///Custom bottom appbar
class CustomBottomBar extends StatefulWidget {
  ///Custom bottom appbar constructor
  const CustomBottomBar({
    required this.location,
    super.key,
  });

  /// splash screen gettin location value
  final Position location;

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  late final BottombarViewModel bottomViewModel;
  late final PageController pageController;

  @override
  void initState() {
    super.initState();
    bottomViewModel = BottombarViewModel();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final topLevelPages = [
      HomePageView(
        currentLocation: widget.location,
      ),
      const SavePage(),
      const SettingsPage(),
    ];

    return BlocProvider(
      create: (context) => bottomViewModel,
      child: BlocConsumer<BottombarViewModel, BottombarViewState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              elevation: 12,
              onTap: (value) {
                bottomViewModel.setCurrentIndex(value);
                pageController.jumpToPage(value);
              },
              enableFeedback: true,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              currentIndex: bottomViewModel.state.currentBottomStateIndex,
              selectedIconTheme: const IconThemeData(
                color: ColorName.negativeColor,
              ),
              selectedItemColor: ColorName.negativeColor,
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.explore),
                  label: LocaleKeys.general_Appbar_maps.tr(),
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.save_as_rounded),
                  label: LocaleKeys.general_Appbar_saveAs.tr(),
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.settings),
                  label: LocaleKeys.general_Appbar_settings.tr(),
                ),
              ],
            ),
            body: BlocConsumer<BottombarViewModel, BottombarViewState>(
              listener: (context, state) {},
              builder: (context, state) {
                return PageView(
                  physics: bottomViewModel.state.currentBottomStateIndex == 0
                      ? const NeverScrollableScrollPhysics()
                      : null,
                  onPageChanged: (value) {
                    bottomViewModel.setCurrentIndex(value);
                    pageController.jumpToPage(value);
                  },
                  controller: pageController,
                  children: topLevelPages,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
