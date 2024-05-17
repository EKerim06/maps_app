// ignore_for_file: must_be_immutable, public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'google_maps_search_model.g.dart';

@JsonSerializable()
class GoogleMapsSearchModel extends INetworkModel<GoogleMapsSearchModel>
    with EquatableMixin {
  List<Candidates>? candidates;
  String? status;

  GoogleMapsSearchModel({
    this.candidates,
    this.status,
  });

  @override
  GoogleMapsSearchModel fromJson(Map<String, dynamic> json) =>
      GoogleMapsSearchModel.fromJson(json);

  factory GoogleMapsSearchModel.fromJson(Map<String, dynamic> json) =>
      _$GoogleMapsSearchModelFromJson(json);

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
  String? formattedAddress;
  Geometry? geometry;
  String? name;
  List<Photos>? photos;
  double? rating;

  Candidates({
    this.formattedAddress,
    this.geometry,
    this.name,
    this.photos,
    this.rating,
  });

  @override
  Candidates fromJson(Map<String, dynamic> json) => Candidates.fromJson(json);

  factory Candidates.fromJson(Map<String, dynamic> json) =>
      _$CandidatesFromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$CandidatesToJson(this);

  @override
  List<Object?> get props => [formattedAddress, geometry, name, photos, rating];

  Candidates copyWith({
    String? formattedAddress,
    Geometry? geometry,
    String? name,
    List<Photos>? photos,
    double? rating,
  }) {
    return Candidates(
      formattedAddress: formattedAddress ?? this.formattedAddress,
      geometry: geometry ?? this.geometry,
      name: name ?? this.name,
      photos: photos ?? this.photos,
      rating: rating ?? this.rating,
    );
  }
}

@JsonSerializable()
class Geometry extends INetworkModel<Geometry> with EquatableMixin {
  Location? location;
  Viewport? viewport;

  Geometry({
    this.location,
    this.viewport,
  });

  @override
  Geometry fromJson(Map<String, dynamic> json) => Geometry.fromJson(json);

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);

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
  double? lat;
  double? lng;

  Location({
    this.lat,
    this.lng,
  });

  @override
  Location fromJson(Map<String, dynamic> json) => Location.fromJson(json);

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

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
  Northeast? northeast;
  Southwest? southwest;

  Viewport({
    this.northeast,
    this.southwest,
  });

  @override
  Viewport fromJson(Map<String, dynamic> json) => Viewport.fromJson(json);

  factory Viewport.fromJson(Map<String, dynamic> json) =>
      _$ViewportFromJson(json);

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
  double? lat;
  double? lng;

  Northeast({
    this.lat,
    this.lng,
  });

  @override
  Northeast fromJson(Map<String, dynamic> json) => Northeast.fromJson(json);

  factory Northeast.fromJson(Map<String, dynamic> json) =>
      _$NortheastFromJson(json);

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
  double? lat;
  double? lng;

  Southwest({
    this.lat,
    this.lng,
  });

  @override
  Southwest fromJson(Map<String, dynamic> json) => Southwest.fromJson(json);

  factory Southwest.fromJson(Map<String, dynamic> json) =>
      _$SouthwestFromJson(json);

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
  int? height;
  List<String>? htmlAttributions;
  String? photoReference;
  int? width;

  Photos({
    this.height,
    this.htmlAttributions,
    this.photoReference,
    this.width,
  });

  @override
  Photos fromJson(Map<String, dynamic> json) => Photos.fromJson(json);

  factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);

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
