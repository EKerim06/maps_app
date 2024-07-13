import 'package:flutter/material.dart';
import 'package:flutter_maps_note/constants/enum/api_keys.dart';
import 'package:flutter_maps_note/models/google_maps_one_search_model/google_maps_search_model.dart';
import 'package:flutter_maps_note/services/google_maps/image/google_search_response_image.dart';
import 'package:flutter_maps_note/services/google_maps/search/google_maps_one_search_network.dart';
import 'package:flutter_maps_note/services/network_services/network_service_manager.dart';
import 'package:flutter_maps_note/services/network_services/network_services_interface.dart';
import 'package:gen/gen/assets.gen.dart';
import 'package:vexana/vexana.dart';

class CustomSearchDelegate extends SearchDelegate<GoogleMapsOneSearchModel?> {
  final NetworkServicesInterface networkManager = NetworkServiceManager(
    googleLocationSearch: GoogleMapsOneSearchNetwork(),
    googleImageFormat: FormatImageUrlNetwork(),
  );

  List<String?> photoBuildingReferencesUrl = List.empty();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = ''; // Arama kutusunu temizle
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null); // Arama ekranını kapat
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder(
      future: searchMapsLocation(locationPath: query),
      builder: (context, AsyncSnapshot<GoogleMapsOneSearchModel?> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.candidates!.isEmpty) {
          return const Center(child: Text('No results found.'));
        }

        final results = snapshot.data!;
        return ListView.builder(
          itemCount: results.candidates?.length,
          itemBuilder: (context, index) {
            final result = results.candidates?[index];
            return ListTile(
              title: Text(result?.name ?? ''),
              subtitle: Text(result?.formattedAddress ?? ''),
              leading: photoBuildingReferencesUrl.isNotEmpty
                  ? SizedBox(
                      width: 50, // Sabit genişlik değeri
                      height: 50, // Sabit yükseklik değeri
                      child: Image.network(
                        photoBuildingReferencesUrl[index]!,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      (loadingProgress.expectedTotalBytes ?? 1)
                                  : null,
                            ),
                          );
                        },
                        errorBuilder: (context, error, stackTrace) =>
                            Assets.icons.notUseImage.image(
                          package: 'gen',
                        ),
                      ),
                    )
                  : SizedBox(
                      width: 50, // Sabit genişlik değeri
                      height: 50, // Sabit yükseklik değeri
                      child: Assets.icons.notUseImage.image(
                        package: 'gen',
                      ),
                    ),
              onTap: () {
                close(
                  context,
                  results,
                ); // Arama sonucuna tıklanınca sonucu döndür
              },
            );
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }

  Future<GoogleMapsOneSearchModel?> searchMapsLocation({
    required String locationPath,
  }) async {
    final response = await networkManager.googleLocationSearch
        .send<GoogleMapsOneSearchModel, GoogleMapsOneSearchModel>(
      'place/findplacefromtext/json?input=$locationPath&inputtype=textquery&fields=photos,formatted_address,name,rating,opening_hours,geometry,place_id&key=${ApiKeys.apiKeysGeneral.value}',
      parseModel: GoogleMapsOneSearchModel(),
      method: RequestType.GET,
      isErrorDialog: true,
    );
    final photoReferences =
        response.data?.candidates?.first.photos?.first.photoReference;

    if (photoReferences != null && photoReferences.isNotEmpty) {
      photoBuildingReferencesUrl.add(
        buildPhotoUrl(
          photoReferences,
        ),
      );
    }
    return response.data;
  }

  // Future<Image?> searchMapsLocationImage(
  //     {required String photoReference}) async {
  //   final response = await networkManager.googleImageFormat
  //       .send<GoogleSearchImageModel, GoogleSearchImageModel>(
  //     'place/photo?maxwidth=400&photoreference=$photoReference&key=AIzaSyDFDAwcTYV1ePWtjcv3MyC5mQgPTrYg1ug',
  //     parseModel: GoogleSearchImageModel(),
  //     method: RequestType.GET,
  //     isErrorDialog: true,
  //   );

  //   print(
  //       'ASDSADASDASDASDASDASDASDASD searchMapsLocationImage response : $response');

  //   if (response.data != null && response.data!.image != null) {
  //     return Image.network(response.data!.image!);
  //   } else {
  //     return Image.asset(Assets.icons.notUseImage.path);
  //   }
  // }

  String buildPhotoUrl(String photoReference, {int maxWidth = 400}) {
    return 'https://maps.googleapis.com/maps/api/place/photo?maxwidth=$maxWidth&photoreference=$photoReference&key=${ApiKeys.apiKeysGeneral.value}';
  }
}
