import 'package:flutter/material.dart';
import 'package:flutter_maps_note/models/google_maps_search_model/google_maps_search_model.dart';
import 'package:flutter_maps_note/services/google_maps/image/google_search_response_image.dart';
import 'package:flutter_maps_note/services/google_maps/search/google_maps_search.dart';
import 'package:flutter_maps_note/services/network_services/network_service_manager.dart';
import 'package:flutter_maps_note/services/network_services/network_services_interface.dart';
import 'package:gen/gen/assets.gen.dart';
import 'package:vexana/vexana.dart';

class CustomSearchDelegate extends SearchDelegate<GoogleMapsSearchModel?> {
  final String apiKey = 'YOUR_GOOGLE_PLACES_API_KEY';

  final NetworkServicesInterface networkManager = NetworkServiceManager(
    googleLocationSearch: SearchNetwork(),
    googleImageFormat: FormatImageUrlNetwork(),
  );

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
      builder: (context, AsyncSnapshot<GoogleMapsSearchModel?> snapshot) {
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
              leading: result?.photos?.first.photoReference == null
                  ? Assets.icons.notUseImage.image(package: 'gen')
                  : Image.network(result!.photos!.first.photoReference!),
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

  final _API_KEY = 'AIzaSyAThj-XaVswHgzFCqSvCBjgZX9ALDYexHc';

  Future<GoogleMapsSearchModel?> searchMapsLocation({
    required String locationPath,
  }) async {
    final response = await networkManager.googleLocationSearch
        .send<GoogleMapsSearchModel, GoogleMapsSearchModel>(
      'place/findplacefromtext/json?input=$locationPath&inputtype=textquery&fields=photos,formatted_address,name,rating,opening_hours,geometry,place_id&key=$_API_KEY',
      parseModel: GoogleMapsSearchModel(),
      method: RequestType.GET,
      isErrorDialog: true,
    );

    // await searchMapsLocationImage(
    //   photoReference:
    //       response.data!.candidates!.first.photos!.first.photoReference!,
    // );

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
}
