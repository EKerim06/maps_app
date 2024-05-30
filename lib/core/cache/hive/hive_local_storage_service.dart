import 'package:flutter_maps_note/constants/enum/locale_cache_keys.dart';
import 'package:flutter_maps_note/core/cache/hive/hive_local_storage_manager.dart';
import 'package:flutter_maps_note/core/models/local_storage_model/save_location.dart';
import 'package:hive_flutter/hive_flutter.dart';

///Hive logic service
class HiveService extends HiveManager {
  ///constructor
  HiveService() {
    _init();
  }

  ///hive veriable

  Future<void> _init() async {
    await Hive.initFlutter();
    await Hive.openBox<SaveLocation>(LocaleCacheKeys.HIVE_LOCATION_KEYS.name);
  }

  @override
  List<SaveLocation> getAllLocation() {
    final box = Hive.box<SaveLocation>(LocaleCacheKeys.HIVE_LOCATION_KEYS.name);

    final response = box.values.toList();
    
    return response;
  }

  @override
  Future<void> removeSelectedLocation({required SaveLocation location}) async {
    final box = Hive.box<SaveLocation>(LocaleCacheKeys.HIVE_LOCATION_KEYS.name);

    final allValue = getAllLocation();

    final dummyList = <SaveLocation>[];

    for (final element in allValue) {
      if (element.name != location.name) {
        dummyList.add(element);
      }
    }
    await box.clear();
    await box.addAll(dummyList);
  }

  @override
  Future<void> saveLocation({required SaveLocation location}) async {
    final box = Hive.box<SaveLocation>(LocaleCacheKeys.HIVE_LOCATION_KEYS.name);

    await box.add(location);
  }

  @override
  Future<void> allClear() async {
    final box = Hive.box<SaveLocation>(LocaleCacheKeys.HIVE_LOCATION_KEYS.name);

    await box.clear();
  }
}
