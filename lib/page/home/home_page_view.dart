// ignore: lines_longer_than_80_chars
import 'package:flutter/material.dart';

///Home Page View
///show Maps
class HomePageView extends StatefulWidget {
  ///HomePageViewModel Constructor
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => MapSampleState();
}

///Home Page State
class MapSampleState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('homePage'),
    );
  }
}
