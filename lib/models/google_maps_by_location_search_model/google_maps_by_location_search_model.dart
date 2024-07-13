import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'google_maps_by_location_search_model.g.dart';

@JsonSerializable()
@immutable
final class GoogleMapsByLocationSearchModel
    extends INetworkModel<GoogleMapsByLocationSearchModel> with EquatableMixin {
  
  final List<GoogleMapsByLocationPlace>? results;
  final String? nextPageToken;

  GoogleMapsByLocationSearchModel({
    this.results,
    this.nextPageToken,
  });

  factory GoogleMapsByLocationSearchModel.fromJson(Map<String, dynamic> json) =>
      _$GoogleMapsByLocationSearchModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GoogleMapsByLocationSearchModelToJson(this);

  @override
  List<Object?> get props => [results, nextPageToken];

  @override
  GoogleMapsByLocationSearchModel fromJson(Map<String, dynamic> json) =>
      _$GoogleMapsByLocationSearchModelFromJson(json);
}

@JsonSerializable()
@immutable
final class GoogleMapsByLocationPlace extends INetworkModel<GoogleMapsByLocationPlace>
    with EquatableMixin {
  
  final String? name;
  final double? lat;
  final double? lng;
  final String? vicinity;
  final double? rating;
  final int? userRatingsTotal;
  final List<GoogleMapsByLocationPhoto>? photos;

  GoogleMapsByLocationPlace({
    this.name,
    this.lat,
    this.lng,
    this.vicinity,
    this.rating,
    this.userRatingsTotal,
    this.photos,
  });

  factory GoogleMapsByLocationPlace.fromJson(Map<String, dynamic> json) =>
      _$GoogleMapsByLocationPlaceFromJson(json);

  Map<String, dynamic> toJson() => _$GoogleMapsByLocationPlaceToJson(this);

  @override
  List<Object?> get props => [
        name,
        lat,
        lng,
        vicinity,
        rating,
        userRatingsTotal,
        photos,
      ];

  @override
  GoogleMapsByLocationPlace fromJson(Map<String, dynamic> json) =>
      _$GoogleMapsByLocationPlaceFromJson(json);
}

@JsonSerializable()
@immutable
final class GoogleMapsByLocationPhoto extends INetworkModel<GoogleMapsByLocationPhoto>
    with EquatableMixin {
  
  final int? height;
  final int? width;
  final String? photoReference;
  final List<String>? htmlAttributions;

  GoogleMapsByLocationPhoto({
    this.height,
    this.width,
    this.photoReference,
    this.htmlAttributions,
  });

  factory GoogleMapsByLocationPhoto.fromJson(Map<String, dynamic> json) =>
      _$GoogleMapsByLocationPhotoFromJson(json);

  Map<String, dynamic> toJson() => _$GoogleMapsByLocationPhotoToJson(this);

  @override
  List<Object?> get props => [height, width, photoReference, htmlAttributions];

  @override
  GoogleMapsByLocationPhoto fromJson(Map<String, dynamic> json) =>
      _$GoogleMapsByLocationPhotoFromJson(json);
}
