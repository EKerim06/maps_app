// ignore_for_file: public_member_api_docs
import 'package:flutter/material.dart';
import 'package:flutter_maps_note/page/splash_screen/onboard_pages/welcome_to_app_page.dart';

void main() {
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
      home: const WelcomeToAppPage(),
    );
  }
}
