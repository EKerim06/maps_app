// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:vexana/vexana.dart';

abstract class NetworkServicesInterface {
  late final NetworkManager googleLocationSearch;

  late final NetworkManager googleImageFormat;

  NetworkServicesInterface({
    required this.googleLocationSearch,
    required this.googleImageFormat,
  });
}
