import 'package:flutter_maps_note/constants/enum/base_url.dart';
import 'package:flutter_maps_note/models/google_maps_search_model/google_maps_search_model.dart';
import 'package:vexana/vexana.dart';

class SearchNetwork extends NetworkManager<GoogleMapsSearchModel> {
  SearchNetwork()
      : super(
          options: BaseOptions(
            baseUrl: BaseUrl.GOOGLE_SEARCH.value,
          ),
        );
}
