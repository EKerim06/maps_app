// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_maps_by_location_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoogleMapsByLocationSearchModel _$GoogleMapsByLocationSearchModelFromJson(
        Map<String, dynamic> json) =>
    GoogleMapsByLocationSearchModel(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) =>
              GoogleMapsByLocationPlace.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageToken: json['nextPageToken'] as String?,
    );

Map<String, dynamic> _$GoogleMapsByLocationSearchModelToJson(
        GoogleMapsByLocationSearchModel instance) =>
    <String, dynamic>{
      'results': instance.results,
      'nextPageToken': instance.nextPageToken,
    };

GoogleMapsByLocationPlace _$GoogleMapsByLocationPlaceFromJson(
        Map<String, dynamic> json) =>
    GoogleMapsByLocationPlace(
      name: json['name'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      vicinity: json['vicinity'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      userRatingsTotal: json['userRatingsTotal'] as int?,
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) =>
              GoogleMapsByLocationPhoto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GoogleMapsByLocationPlaceToJson(
        GoogleMapsByLocationPlace instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lat': instance.lat,
      'lng': instance.lng,
      'vicinity': instance.vicinity,
      'rating': instance.rating,
      'userRatingsTotal': instance.userRatingsTotal,
      'photos': instance.photos,
    };

GoogleMapsByLocationPhoto _$GoogleMapsByLocationPhotoFromJson(
        Map<String, dynamic> json) =>
    GoogleMapsByLocationPhoto(
      height: json['height'] as int?,
      width: json['width'] as int?,
      photoReference: json['photoReference'] as String?,
      htmlAttributions: (json['htmlAttributions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$GoogleMapsByLocationPhotoToJson(
        GoogleMapsByLocationPhoto instance) =>
    <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'photoReference': instance.photoReference,
      'htmlAttributions': instance.htmlAttributions,
    };
