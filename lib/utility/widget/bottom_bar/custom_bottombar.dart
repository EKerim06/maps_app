// ignore_for_file:  sort_constructors_first
// ignore_for_file: public_member_api_docs, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_maps_note/feature/home/home_page_view.dart';
import 'package:flutter_maps_note/feature/save/save_page.dart';
import 'package:flutter_maps_note/feature/settings/settings_page.dart';

import 'package:flutter_maps_note/utility/widget/bottom_bar/cubit/bottombar_view_model.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({
    super.key,
  });

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
    const topLevelPages = [
      HomePageView(),
      SavePage(),
      SettingsPage(),
    ];

    return BlocProvider(
      create: (context) => bottomViewModel,
      child: BlocConsumer<BottombarViewModel, BottombarViewState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
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
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.explore),
                  label: 'Harita',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.flag),
                  label: 'Kaydedilenler',
                ),
                BottomNavigationBarItem(
                  label: 'Ayarlar',
                  icon: Icon(Icons.settings),
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
