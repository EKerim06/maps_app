// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_maps_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoogleMapsOneSearchModel _$GoogleMapsOneSearchModelFromJson(
        Map<String, dynamic> json) =>
    GoogleMapsOneSearchModel(
      candidates: (json['candidates'] as List<dynamic>?)
          ?.map((e) => Candidates.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$GoogleMapsOneSearchModelToJson(
        GoogleMapsOneSearchModel instance) =>
    <String, dynamic>{
      'candidates': instance.candidates,
      'status': instance.status,
    };

Candidates _$CandidatesFromJson(Map<String, dynamic> json) => Candidates(
      formattedAddress: json['formattedAddress'] as String?,
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      name: json['name'] as String?,
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photos.fromJson(e as Map<String, dynamic>))
          .toList(),
      placeId: json['placeId'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CandidatesToJson(Candidates instance) =>
    <String, dynamic>{
      'formattedAddress': instance.formattedAddress,
      'geometry': instance.geometry,
      'name': instance.name,
      'photos': instance.photos,
      'placeId': instance.placeId,
      'rating': instance.rating,
    };

Geometry _$GeometryFromJson(Map<String, dynamic> json) => Geometry(
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      viewport: json['viewport'] == null
          ? null
          : Viewport.fromJson(json['viewport'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GeometryToJson(Geometry instance) => <String, dynamic>{
      'location': instance.location,
      'viewport': instance.viewport,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

Viewport _$ViewportFromJson(Map<String, dynamic> json) => Viewport(
      northeast: json['northeast'] == null
          ? null
          : Northeast.fromJson(json['northeast'] as Map<String, dynamic>),
      southwest: json['southwest'] == null
          ? null
          : Southwest.fromJson(json['southwest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ViewportToJson(Viewport instance) => <String, dynamic>{
      'southwest': instance.southwest,
      'northeast': instance.northeast,
    };

Northeast _$NortheastFromJson(Map<String, dynamic> json) => Northeast(
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$NortheastToJson(Northeast instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

Southwest _$SouthwestFromJson(Map<String, dynamic> json) => Southwest(
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SouthwestToJson(Southwest instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

Photos _$PhotosFromJson(Map<String, dynamic> json) => Photos(
      height: json['height'] as int?,
      htmlAttributions: (json['htmlAttributions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      photoReference: json['photoReference'] as String?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$PhotosToJson(Photos instance) => <String, dynamic>{
      'height': instance.height,
      'htmlAttributions': instance.htmlAttributions,
      'photoReference': instance.photoReference,
      'width': instance.width,
    };
