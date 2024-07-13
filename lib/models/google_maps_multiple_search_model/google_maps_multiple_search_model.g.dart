// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_maps_multiple_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoogleMapsMultipleSearchModel _$GoogleMapsMultipleSearchModelFromJson(
        Map<String, dynamic> json) =>
    GoogleMapsMultipleSearchModel(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) =>
              GoogleMapsMultipleResults.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageToken: json['nextPageToken'] as String?,
      htmlAttributions: (json['htmlAttributions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$GoogleMapsMultipleSearchModelToJson(
        GoogleMapsMultipleSearchModel instance) =>
    <String, dynamic>{
      'results': instance.results,
      'nextPageToken': instance.nextPageToken,
      'htmlAttributions': instance.htmlAttributions,
      'status': instance.status,
    };

GoogleMapsMultipleResults _$GoogleMapsMultipleResultsFromJson(
        Map<String, dynamic> json) =>
    GoogleMapsMultipleResults(
      name: json['name'] as String?,
      vicinity: json['vicinity'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      userRatingsTotal: json['userRatingsTotal'] as int?,
      businessStatus: json['businessStatus'] as String?,
      geometry: json['geometry'] == null
          ? null
          : GoogleMapsMutlipleResultGeometry.fromJson(
              json['geometry'] as Map<String, dynamic>),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) =>
              GoogleMapsMultipleResultPhoto.fromJson(e as Map<String, dynamic>))
          .toList(),
      placeId: json['placeId'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      iconBackgroundColor: json['iconBackgroundColor'] as String?,
      iconMaskBaseUri: json['iconMaskBaseUri'] as String?,
      icon: json['icon'] as String?,
      plusCode: json['plusCode'] == null
          ? null
          : PlusCodeMultiple.fromJson(json['plusCode'] as Map<String, dynamic>),
      priceLevel: json['priceLevel'] as int?,
      openNow: json['openNow'] as bool?,
    );

Map<String, dynamic> _$GoogleMapsMultipleResultsToJson(
        GoogleMapsMultipleResults instance) =>
    <String, dynamic>{
      'name': instance.name,
      'vicinity': instance.vicinity,
      'rating': instance.rating,
      'userRatingsTotal': instance.userRatingsTotal,
      'businessStatus': instance.businessStatus,
      'geometry': instance.geometry,
      'photos': instance.photos,
      'placeId': instance.placeId,
      'types': instance.types,
      'iconBackgroundColor': instance.iconBackgroundColor,
      'iconMaskBaseUri': instance.iconMaskBaseUri,
      'icon': instance.icon,
      'plusCode': instance.plusCode,
      'priceLevel': instance.priceLevel,
      'openNow': instance.openNow,
    };

GoogleMapsMutlipleResultGeometry _$GoogleMapsMutlipleResultGeometryFromJson(
        Map<String, dynamic> json) =>
    GoogleMapsMutlipleResultGeometry(
      location: json['location'] == null
          ? null
          : GoogleMapsMultipleSearchResultLocation.fromJson(
              json['location'] as Map<String, dynamic>),
      viewport: json['viewport'] == null
          ? null
          : GoogleMapsMultipleResultViewPort.fromJson(
              json['viewport'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GoogleMapsMutlipleResultGeometryToJson(
        GoogleMapsMutlipleResultGeometry instance) =>
    <String, dynamic>{
      'location': instance.location,
      'viewport': instance.viewport,
    };

GoogleMapsMultipleSearchResultLocation
    _$GoogleMapsMultipleSearchResultLocationFromJson(
            Map<String, dynamic> json) =>
        GoogleMapsMultipleSearchResultLocation(
          lat: (json['lat'] as num?)?.toDouble(),
          lng: (json['lng'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$GoogleMapsMultipleSearchResultLocationToJson(
        GoogleMapsMultipleSearchResultLocation instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

GoogleMapsMultipleResultViewPort _$GoogleMapsMultipleResultViewPortFromJson(
        Map<String, dynamic> json) =>
    GoogleMapsMultipleResultViewPort(
      northeast: json['northeast'] == null
          ? null
          : GoogleMapsMultipleSearchResultLocation.fromJson(
              json['northeast'] as Map<String, dynamic>),
      southwest: json['southwest'] == null
          ? null
          : GoogleMapsMultipleSearchResultLocation.fromJson(
              json['southwest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GoogleMapsMultipleResultViewPortToJson(
        GoogleMapsMultipleResultViewPort instance) =>
    <String, dynamic>{
      'northeast': instance.northeast,
      'southwest': instance.southwest,
    };

GoogleMapsMultipleResultPhoto _$GoogleMapsMultipleResultPhotoFromJson(
        Map<String, dynamic> json) =>
    GoogleMapsMultipleResultPhoto(
      height: json['height'] as int?,
      width: json['width'] as int?,
      htmlAttributions: (json['htmlAttributions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      photoReference: json['photoReference'] as String?,
    );

Map<String, dynamic> _$GoogleMapsMultipleResultPhotoToJson(
        GoogleMapsMultipleResultPhoto instance) =>
    <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'htmlAttributions': instance.htmlAttributions,
      'photoReference': instance.photoReference,
    };

PlusCodeMultiple _$PlusCodeMultipleFromJson(Map<String, dynamic> json) =>
    PlusCodeMultiple(
      compoundCode: json['compoundCode'] as String?,
      globalCode: json['globalCode'] as String?,
    );

Map<String, dynamic> _$PlusCodeMultipleToJson(PlusCodeMultiple instance) =>
    <String, dynamic>{
      'compoundCode': instance.compoundCode,
      'globalCode': instance.globalCode,
    };
