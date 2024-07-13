enum ApiKeys {
  apiKeysGeneral;
}

extension ApiKeysExtensions on ApiKeys {
  String get value {
    switch (this) {
      case ApiKeys.apiKeysGeneral:
        return 'AIzaSyDFDAwcTYV1ePWtjcv3MyC5mQgPTrYg1ug';
      default:
        return 'Error';
    }
  }
}
