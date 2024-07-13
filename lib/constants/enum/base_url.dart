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

enum EndPointEnum {
  OneSearch,
  MultipleSearch,
  ByLocationSearch,
}

extension EndPointExtension on EndPointEnum {
  String get value {
    switch (this) {
      case EndPointEnum.OneSearch:
        return 'findplacefromtext';
      case EndPointEnum.MultipleSearch:
        return 'textsearch';
      case EndPointEnum.ByLocationSearch:
        return 'nearbysearch';
    }
  }
}
