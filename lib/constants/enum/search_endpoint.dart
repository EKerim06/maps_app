// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_maps_note/constants/enum/base_url.dart';
import 'package:flutter_maps_note/models/google_maps_by_location_search_model/google_maps_by_location_search_model.dart';
import 'package:flutter_maps_note/models/google_maps_multiple_search_model/google_maps_multiple_search_model.dart';
import 'package:flutter_maps_note/models/google_maps_one_search_model/google_maps_search_model.dart';
import 'package:flutter_maps_note/services/google_maps/search/google_maps_by_location_search_network.dart';
import 'package:flutter_maps_note/services/google_maps/search/google_maps_multiple_search_network.dart';
import 'package:flutter_maps_note/services/google_maps/search/google_maps_one_search_network.dart';
import 'package:vexana/vexana.dart';

enum SearchEndPoint {
  OneSearch,
  MultipleSearch,
  LocationByDistanceSearch;
}

class EndpointEndNetworkClass {
  String endPoint;
  NetworkManager manager;
  INetworkModel models;
  EndpointEndNetworkClass({
    required this.endPoint,
    required this.manager,
    required this.models,
  });
}

extension SearchEndpointExtension on SearchEndPoint {
  EndpointEndNetworkClass get value {
    switch (this) {
      case SearchEndPoint.OneSearch:
        return EndpointEndNetworkClass(
          endPoint: EndPointEnum.OneSearch.value,
          manager: GoogleMapsOneSearchNetwork(),
          models: GoogleMapsOneSearchModel(),
        );
      case SearchEndPoint.MultipleSearch:
        return EndpointEndNetworkClass(
          endPoint: EndPointEnum.MultipleSearch.value,
          manager: GoogleMapsMultipleSearchNetwork(),
          models: GoogleMapsMultipleSearchModel(),
        );
      case SearchEndPoint.LocationByDistanceSearch:
        return EndpointEndNetworkClass(
          endPoint: EndPointEnum.ByLocationSearch.value,
          manager: GoogleMapsByLocationSearchNetwork(),
          models: GoogleMapsByLocationSearchModel(),
        );
    }
  }
}
