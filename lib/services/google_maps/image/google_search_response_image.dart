import 'package:flutter_maps_note/constants/enum/base_url.dart';
import 'package:flutter_maps_note/models/google_maps_one_search_model/google_search_image_model.dart';
import 'package:vexana/vexana.dart';

// ignore: public_member_api_docs
class FormatImageUrlNetwork extends NetworkManager<GoogleSearchImageModel> {
  FormatImageUrlNetwork()
      : super(
          options: BaseOptions(
            baseUrl: BaseUrl.IMAGE.value,
          ),
        );
}
