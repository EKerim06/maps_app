// ignore_for_file: public_member_api_docs
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_maps_note/core/localization/custom_localization.dart';
import 'package:flutter_maps_note/core/models/local_storage_model/save_location.dart';
import 'package:flutter_maps_note/feature/splash_screen/splash_page_view.dart';
import 'package:flutter_maps_note/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setup();
  Hive.registerAdapter<SaveLocation>(SaveLocationAdapter());
  await Hive.initFlutter();
  await getIt.allReady();

  await EasyLocalization.ensureInitialized();

  runApp(CustomLocalization(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Maps Note',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashPageView(),
    );
  }
}
