import 'package:flutter_maps_note/models/local_storage_model/save_location.dart';

/// HIve Service Manager
abstract class HiveManager {
  ///save the location
  Future<void> saveLocation({required SaveLocation location});

  ///get hive storage all location
  List<SaveLocation> getAllLocation();

  ///selecting location is deleting
  Future<void> removeSelectedLocation({required SaveLocation location});

  ///local cache all clear
  Future<void> allClear();
}
