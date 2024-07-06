// ignore_for_file: public_member_api_docs

import 'package:hive_flutter/adapters.dart';

part 'save_location.g.dart';

@HiveType(typeId: 0)
class SaveLocation extends HiveObject {
  SaveLocation({
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.imagePath,
    required this.distance,
    required this.againsNumber,
    required this.frequencyNumber,
  });

  @HiveField(0)
  String name;

  @HiveField(1)
  double latitude;

  @HiveField(2)
  double longitude;

  @HiveField(3)
  String imagePath;

  @HiveField(4)
  int distance;

  @HiveField(5)
  int againsNumber;

  @HiveField(6)
  int frequencyNumber;

}
