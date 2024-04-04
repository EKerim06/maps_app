// ignore_for_file: public_member_api_docs
import 'package:flutter/material.dart';
import 'package:flutter_maps_note/feature/splash_screen/splash_page_view.dart';
import 'package:flutter_maps_note/get_it.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashPageView(),
    );
  }
}
