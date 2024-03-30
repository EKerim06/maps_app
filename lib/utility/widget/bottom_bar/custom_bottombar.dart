// ignore_for_file:  sort_constructors_first
// ignore_for_file: public_member_api_docs, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_maps_note/page/home/home_page_view.dart';
import 'package:flutter_maps_note/page/save/save_page.dart';
import 'package:flutter_maps_note/page/settings/settings_page.dart';

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

  @override
  void initState() {
    super.initState();
    bottomViewModel = BottombarViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bottomViewModel,
      child: BlocConsumer<BottombarViewModel, BottombarViewState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            
            bottomNavigationBar: BottomNavigationBar(
              elevation: 4,
              onTap: bottomViewModel.setCurrentIndex,
              enableFeedback: true,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              currentIndex: bottomViewModel.state.currentBottomStateIndex ?? 0,
              items: const [
                BottomNavigationBarItem(
                  label: 'Ayarlar',
                  icon: Icon(Icons.settings),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.explore),
                  label: 'Harita',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.flag),
                  label: 'Kaydedilenler',
                ),
              ],
            ),
            body: BlocConsumer<BottombarViewModel, BottombarViewState>(
              listener: (context, state) {},
              builder: (context, state) {
                return <Widget>[
                  const HomePageView(),
                  const SettingsPage(),
                  const SavePage(),
                ][state.currentBottomStateIndex ?? 0];
              },
            ),
          );
        },
      ),
    );
  }
}
