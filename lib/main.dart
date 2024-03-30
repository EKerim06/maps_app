// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_maps_note/page/home/home_page_view.dart';
import 'package:flutter_maps_note/utility/widget/bottom_bar/custom_bottombar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return const CustomBottomBar();
      },
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePageView(),
    );
  }
}
