// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'google_search_image_model.g.dart';

@JsonSerializable()
class GoogleSearchImageModel extends INetworkModel<GoogleSearchImageModel>
    with EquatableMixin {
  GoogleSearchImageModel({
    this.image,
  });

  factory GoogleSearchImageModel.fromJson(Map<String, dynamic> json) =>
      _$GoogleSearchImageModelFromJson(json);
  String? image;

  @override
  GoogleSearchImageModel fromJson(Map<String, dynamic> json) =>
      GoogleSearchImageModel.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$GoogleSearchImageModelToJson(this);

  @override
  List<Object?> get props => [image];

  GoogleSearchImageModel copyWith({
    String? image,
  }) {
    return GoogleSearchImageModel(
      image: image ?? this.image,
    );
  }

}
