import 'package:flutter_maps_note/constants/enum/base_url.dart';
import 'package:flutter_maps_note/models/google_maps_by_location_search_model/google_maps_by_location_search_model.dart';
import 'package:vexana/vexana.dart';

class GoogleMapsByLocationSearchNetwork
    extends NetworkManager<GoogleMapsByLocationSearchModel> {
  GoogleMapsByLocationSearchNetwork()
      : super(
          options: BaseOptions(
            baseUrl: BaseUrl.GOOGLE_SEARCH.value,
          ),
        );
}
