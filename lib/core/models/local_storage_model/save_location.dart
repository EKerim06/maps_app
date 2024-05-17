// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

part 'save_location.g.dart';

@HiveType(typeId: 0)
class SaveLocation extends HiveObject {
  SaveLocation({
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.image,
    required this.distance,
  });

  @HiveField(0)
  String name;

  @HiveField(1)
  double latitude;

  @HiveField(2)
  double longitude;

  @HiveField(3)
  Image image;

  @HiveField(4)
  int distance;
}
