import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'google_maps_multiple_search_model.g.dart';

@JsonSerializable()
@immutable
final class GoogleMapsMultipleSearchModel
    extends INetworkModel<GoogleMapsMultipleSearchModel> with EquatableMixin {
  GoogleMapsMultipleSearchModel({
    this.results,
    this.nextPageToken,
    this.htmlAttributions,
    this.status,
  });

  factory GoogleMapsMultipleSearchModel.fromJson(Map<String, dynamic> json) =>
      _$GoogleMapsMultipleSearchModelFromJson(json);

  final List<GoogleMapsMultipleResults>? results;
  final String? nextPageToken;
  final List<String>? htmlAttributions;
  final String? status;

  @override
  GoogleMapsMultipleSearchModel fromJson(Map<String, dynamic> json) {
    return _$GoogleMapsMultipleSearchModelFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() => _$GoogleMapsMultipleSearchModelToJson(this);

  @override
  List<Object?> get props => [results, nextPageToken, htmlAttributions, status];
}

@JsonSerializable()
@immutable
class GoogleMapsMultipleResults extends INetworkModel<GoogleMapsMultipleResults>
    with EquatableMixin {
    GoogleMapsMultipleResults({
    this.name,
    this.vicinity,
    this.rating,
    this.userRatingsTotal,
    this.businessStatus,
    this.geometry,
    this.photos,
    this.placeId,
    this.types,
    this.iconBackgroundColor,
    this.iconMaskBaseUri,
    this.icon,
    this.plusCode,
    this.priceLevel,
    this.openNow,
  });

  factory GoogleMapsMultipleResults.fromJson(Map<String, dynamic> json) =>
      _$GoogleMapsMultipleResultsFromJson(json);

  final String? name;
  final String? vicinity;
  final double? rating;
  final int? userRatingsTotal;
  final String? businessStatus;
  final GoogleMapsMutlipleResultGeometry? geometry;
  final List<GoogleMapsMultipleResultPhoto>? photos;
  final String? placeId;
  final List<String>? types;
  final String? iconBackgroundColor;
  final String? iconMaskBaseUri;
  final String? icon;
  final PlusCodeMultiple? plusCode;
  final int? priceLevel;
  final bool? openNow;

  @override
  GoogleMapsMultipleResults fromJson(Map<String, dynamic> json) {
    return _$GoogleMapsMultipleResultsFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() => _$GoogleMapsMultipleResultsToJson(this);

  @override
  List<Object?> get props => [
        name,
        vicinity,
        rating,
        userRatingsTotal,
        businessStatus,
        geometry,
        photos,
        placeId,
        types,
        iconBackgroundColor,
        iconMaskBaseUri,
        icon,
        plusCode,
        priceLevel,
        openNow,
      ];
}

@JsonSerializable()
@immutable
class GoogleMapsMutlipleResultGeometry
    extends INetworkModel<GoogleMapsMutlipleResultGeometry>
    with EquatableMixin {
    GoogleMapsMutlipleResultGeometry({
    this.location,
    this.viewport,
  });

  factory GoogleMapsMutlipleResultGeometry.fromJson(
          Map<String, dynamic> json) =>
      _$GoogleMapsMutlipleResultGeometryFromJson(json);

  final GoogleMapsMultipleSearchResultLocation? location;
  final GoogleMapsMultipleResultViewPort? viewport;

  @override
  GoogleMapsMutlipleResultGeometry fromJson(Map<String, dynamic> json) =>
      _$GoogleMapsMutlipleResultGeometryFromJson(json);

  @override
  Map<String, dynamic>? toJson() =>
      _$GoogleMapsMutlipleResultGeometryToJson(this);

  @override
  List<Object?> get props => [
        location,
        viewport,
      ];
}

@JsonSerializable()
@immutable
class GoogleMapsMultipleSearchResultLocation
    extends INetworkModel<GoogleMapsMultipleSearchResultLocation>
    with EquatableMixin {
    GoogleMapsMultipleSearchResultLocation({
    this.lat,
    this.lng,
  });

  factory GoogleMapsMultipleSearchResultLocation.fromJson(
          Map<String, dynamic> json) =>
      _$GoogleMapsMultipleSearchResultLocationFromJson(json);

  final double? lat;
  final double? lng;

  @override
  GoogleMapsMultipleSearchResultLocation fromJson(Map<String, dynamic> json) {
    return _$GoogleMapsMultipleSearchResultLocationFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() =>
      _$GoogleMapsMultipleSearchResultLocationToJson(this);

  @override
  List<Object?> get props => [
        lat,
        lng,
      ];
}

@JsonSerializable()
@immutable
class GoogleMapsMultipleResultViewPort
    extends INetworkModel<GoogleMapsMultipleResultViewPort>
    with EquatableMixin {
    GoogleMapsMultipleResultViewPort({
    this.northeast,
    this.southwest,
  });

  factory GoogleMapsMultipleResultViewPort.fromJson(
          Map<String, dynamic> json) =>
      _$GoogleMapsMultipleResultViewPortFromJson(json);

  final GoogleMapsMultipleSearchResultLocation? northeast;
  final GoogleMapsMultipleSearchResultLocation? southwest;

  @override
  GoogleMapsMultipleResultViewPort fromJson(Map<String, dynamic> json) {
    return _$GoogleMapsMultipleResultViewPortFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() =>
      _$GoogleMapsMultipleResultViewPortToJson(this);

  @override
  List<Object?> get props => [
        northeast,
        southwest,
      ];
}

@JsonSerializable()
@immutable
class GoogleMapsMultipleResultPhoto
    extends INetworkModel<GoogleMapsMultipleResultPhoto> with EquatableMixin {
    GoogleMapsMultipleResultPhoto({
    this.height,
    this.width,
    this.htmlAttributions,
    this.photoReference,
  });

  factory GoogleMapsMultipleResultPhoto.fromJson(Map<String, dynamic> json) =>
      _$GoogleMapsMultipleResultPhotoFromJson(json);

  final int? height;
  final int? width;
  final List<String>? htmlAttributions;
  final String? photoReference;

  @override
  GoogleMapsMultipleResultPhoto fromJson(Map<String, dynamic> json) {
    return _$GoogleMapsMultipleResultPhotoFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() => _$GoogleMapsMultipleResultPhotoToJson(this);

  @override
  List<Object?> get props => [
        height,
        width,
        htmlAttributions,
        photoReference,
      ];
}

@JsonSerializable()
@immutable
class PlusCodeMultiple extends INetworkModel<PlusCodeMultiple>
    with EquatableMixin {
    PlusCodeMultiple({
    this.compoundCode,
    this.globalCode,
  });

  factory PlusCodeMultiple.fromJson(Map<String, dynamic> json) =>
      _$PlusCodeMultipleFromJson(json);

  final String? compoundCode;
  final String? globalCode;

  @override
  PlusCodeMultiple fromJson(Map<String, dynamic> json) {
    return _$PlusCodeMultipleFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() => _$PlusCodeMultipleToJson(this);

  @override
  List<Object?> get props => [
        compoundCode,
        globalCode,
      ];
}
