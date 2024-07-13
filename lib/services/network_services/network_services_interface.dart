// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_maps_note/core/cache/shared_preferences/shared_preferences_manager.dart';
import 'package:vexana/vexana.dart';

abstract class NetworkServicesInterface {
  late final NetworkManager googleLocationSearch;

  late final NetworkManager googleImageFormat;

  late final SharedPreferencesManager? service;

  NetworkServicesInterface({
    required this.googleLocationSearch,
    required this.googleImageFormat,
    this.service,
  });
}
