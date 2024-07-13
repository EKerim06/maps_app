import 'package:flutter/material.dart';
import 'package:flutter_maps_note/constants/enum/api_keys.dart';
import 'package:flutter_maps_note/models/google_maps_one_search_model/google_maps_search_model.dart';
import 'package:flutter_maps_note/models/google_maps_one_search_model/google_search_image_model.dart';
import 'package:flutter_maps_note/services/network_services/network_services_interface.dart';
import 'package:gen/gen/assets.gen.dart';
import 'package:vexana/vexana.dart';

class NetworkServiceManager extends NetworkServicesInterface {
  NetworkServiceManager({
    required super.googleLocationSearch,
    required super.googleImageFormat,
    super.service,
  });

  Future<GoogleMapsOneSearchModel?> searchMapsLocation({
    required String locationPath,
  }) async {
    final response = await googleLocationSearch
        .send<GoogleMapsOneSearchModel, GoogleMapsOneSearchModel>(
      'place/findplacefromtext/json?input=$locationPath&inputtype=textquery&fields=photos,formatted_address,name,rating,opening_hours,geometry,place_id&key=${ApiKeys.apiKeysGeneral.value}',
      parseModel: GoogleMapsOneSearchModel(),
      method: RequestType.GET,
      isErrorDialog: true,
    );
    return response.data;
  }

  Future<Image> formatImage({
    required String imagePaht,
    double maxWitdh = 400,
  }) async {
    final response = await googleImageFormat
        .send<GoogleSearchImageModel, GoogleSearchImageModel>(
      imagePaht,
      parseModel: GoogleSearchImageModel(),
      method: RequestType.GET,
    );
    print("network service manager format image response : $response");
    if (response.data != null || response.data?.image != null) {
      return Image.asset(response.data!.image!);
    }
    return Assets.icons.notUseImage.image(package: 'gen');
  }
}
