import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'google_maps_search_model.g.dart';

@JsonSerializable()
@immutable
final class GoogleMapsSearchModel extends INetworkModel<GoogleMapsSearchModel>
    with EquatableMixin {
  GoogleMapsSearchModel({
    this.candidates,
    this.status,
  });

  factory GoogleMapsSearchModel.fromJson(Map<String, dynamic> json) =>
      _$GoogleMapsSearchModelFromJson(json);
  final List<Candidates>? candidates;
  final String? status;

  @override
  GoogleMapsSearchModel fromJson(Map<String, dynamic> json) =>
      GoogleMapsSearchModel.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$GoogleMapsSearchModelToJson(this);

  @override
  List<Object?> get props => [candidates, status];

  GoogleMapsSearchModel copyWith({
    List<Candidates>? candidates,
    String? status,
  }) {
    return GoogleMapsSearchModel(
      candidates: candidates ?? this.candidates,
      status: status ?? this.status,
    );
  }
}

@JsonSerializable()
class Candidates extends INetworkModel<Candidates> with EquatableMixin {
  Candidates({
    this.formattedAddress,
    this.geometry,
    this.name,
    this.photos,
    this.placeId,
    this.rating,
  });

  factory Candidates.fromJson(Map<String, dynamic> json) =>
      _$CandidatesFromJson(json);

  final String? formattedAddress;
  final Geometry? geometry;
  final String? name;
  final List<Photos>? photos;
  final String? placeId;
  final double? rating;

  @override
  Candidates fromJson(Map<String, dynamic> json) => Candidates.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$CandidatesToJson(this);

  @override
  List<Object?> get props =>
      [formattedAddress, geometry, name, photos, placeId, rating];

  Candidates copyWith({
    String? formattedAddress,
    Geometry? geometry,
    String? name,
    List<Photos>? photos,
    String? placeId,
    double? rating,
  }) {
    return Candidates(
      formattedAddress: formattedAddress ?? this.formattedAddress,
      geometry: geometry ?? this.geometry,
      name: name ?? this.name,
      photos: photos ?? this.photos,
      placeId: placeId ?? this.placeId,
      rating: rating ?? this.rating,
    );
  }
}

@JsonSerializable()
class Geometry extends INetworkModel<Geometry> with EquatableMixin {
  Geometry({
    this.location,
    this.viewport,
  });

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);

  final Location? location;
  final Viewport? viewport;

  @override
  Geometry fromJson(Map<String, dynamic> json) => Geometry.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$GeometryToJson(this);

  @override
  List<Object?> get props => [location, viewport];

  Geometry copyWith({
    Location? location,
    Viewport? viewport,
  }) {
    return Geometry(
      location: location ?? this.location,
      viewport: viewport ?? this.viewport,
    );
  }
}

@JsonSerializable()
class Location extends INetworkModel<Location> with EquatableMixin {
  Location({
    this.lat,
    this.lng,
  });
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  final double? lat;
  final double? lng;

  @override
  Location fromJson(Map<String, dynamic> json) => Location.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$LocationToJson(this);

  @override
  List<Object?> get props => [lat, lng];

  Location copyWith({
    double? lat,
    double? lng,
  }) {
    return Location(
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }
}

@JsonSerializable()
class Viewport extends INetworkModel<Viewport> with EquatableMixin {
  Viewport({
    this.northeast,
    this.southwest,
  });

  factory Viewport.fromJson(Map<String, dynamic> json) =>
      _$ViewportFromJson(json);
  final Southwest? southwest;
  final Northeast? northeast;

  @override
  Viewport fromJson(Map<String, dynamic> json) => Viewport.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$ViewportToJson(this);

  @override
  List<Object?> get props => [northeast, southwest];

  Viewport copyWith({
    Northeast? northeast,
    Southwest? southwest,
  }) {
    return Viewport(
      northeast: northeast ?? this.northeast,
      southwest: southwest ?? this.southwest,
    );
  }
}

@JsonSerializable()
class Northeast extends INetworkModel<Northeast> with EquatableMixin {
  Northeast({
    this.lat,
    this.lng,
  });

  factory Northeast.fromJson(Map<String, dynamic> json) =>
      _$NortheastFromJson(json);
  final double? lat;
  final double? lng;

  @override
  Northeast fromJson(Map<String, dynamic> json) => Northeast.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$NortheastToJson(this);

  @override
  List<Object?> get props => [lat, lng];

  Northeast copyWith({
    double? lat,
    double? lng,
  }) {
    return Northeast(
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }
}

@JsonSerializable()
class Southwest extends INetworkModel<Southwest> with EquatableMixin {
  Southwest({
    this.lat,
    this.lng,
  });

  factory Southwest.fromJson(Map<String, dynamic> json) =>
      _$SouthwestFromJson(json);
  final double? lat;
  final double? lng;

  @override
  Southwest fromJson(Map<String, dynamic> json) => Southwest.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$SouthwestToJson(this);

  @override
  List<Object?> get props => [lat, lng];

  Southwest copyWith({
    double? lat,
    double? lng,
  }) {
    return Southwest(
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }
}

@JsonSerializable()
class Photos extends INetworkModel<Photos> with EquatableMixin {
  Photos({
    this.height,
    this.htmlAttributions,
    this.photoReference,
    this.width,
  });

  factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);
  final int? height;
  final List<String>? htmlAttributions;
  final String? photoReference;
  final int? width;

  @override
  Photos fromJson(Map<String, dynamic> json) => Photos.fromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$PhotosToJson(this);

  @override
  List<Object?> get props => [height, htmlAttributions, photoReference, width];

  Photos copyWith({
    int? height,
    List<String>? htmlAttributions,
    String? photoReference,
    int? width,
  }) {
    return Photos(
      height: height ?? this.height,
      htmlAttributions: htmlAttributions ?? this.htmlAttributions,
      photoReference: photoReference ?? this.photoReference,
      width: width ?? this.width,
    );
  }
}
