enum BaseUrl { GOOGLE_SEARCH, IMAGE }

extension BaseUrlExtension on BaseUrl {
  String get value {
    switch (this) {
      case BaseUrl.GOOGLE_SEARCH:
        return 'https://maps.googleapis.com/maps/api/';
      case BaseUrl.IMAGE:
        return 'https://maps.googleapis.com/maps/api/place/photo?';
    }
  }
}
