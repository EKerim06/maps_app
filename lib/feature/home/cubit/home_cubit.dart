// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui' as ui;

import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_maps_note/core/cache/hive/hive_local_storage_manager.dart';
import 'package:flutter_maps_note/core/localization/locale_keys.g.dart';
import 'package:flutter_maps_note/models/local_storage_model/save_location.dart';
import 'package:flutter_maps_note/utility/func/general/general_func.dart';
import 'package:flutter_maps_note/utility/widget/alert_dialog/detail_dialog.dart';
import 'package:flutter_maps_note/utility/widget/alert_dialog/positive_negative_alert_dialog.dart';
import 'package:flutter_maps_note/utility/widget/texts/info_text.dart';
import 'package:gen/gen/assets.gen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kartal/kartal.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this.manager,
    this.context,
  ) : super(const HomeState());
  late final BuildContext context;
  final HiveManager manager;

  List<SaveLocation?>? _fetchSavedData() {
    return manager.getAllLocation();
  }

  void markersCreate() {
    final savedLocationList = _fetchSavedData();

    late final markerList = <Marker>{};

    late final cirlceList = <Circle>{};

    if (savedLocationList?.isNotEmpty ?? false) {
      for (final element in savedLocationList!) {
        markerList.add(
          Marker(
            markerId: MarkerId(element!.name),
            position: LatLng(element.latitude, element.longitude),
            infoWindow: InfoWindow(
              title: element.name,
              snippet:
                  '${element.distance} ${LocaleKeys.HomePage_BottomSheet_bottomSheetDistanceMeter.tr()}',
              onTap: () {
                DetailDialog.show(
                  context,
                  title:
                      '${element.name} ${LocaleKeys.general_alertDialogs_DetailDialog_title.tr()}',
                  // content: '',
                  positiveButton: LocaleKeys
                      .general_alertDialogs_DetailDialog_positiveButton,
                  positiveButtonOnPressed: () {
                    context.route.pop();
                  },
                  locationName: InfoText(
                    title: LocaleKeys
                        .general_alertDialogs_DetailDialog_locationName,
                    descriptions: element.name,
                  ),
                  againsNumber: InfoText(
                    title: LocaleKeys
                        .general_alertDialogs_DetailDialog_againNumber,
                    descriptions:
                        '${element.againsNumber} ${LocaleKeys.general_alertDialogs_DetailDialog_againNumber.tr()}',
                  ),
                  remainingAgainsNumber: InfoText(
                    title: LocaleKeys
                        .general_alertDialogs_DetailDialog_remainingAgainNumber,
                    descriptions:
                        '${element.againsNumber} ${LocaleKeys.general_alertDialogs_DetailDialog_remainingAgainNumberDescriptions.tr()}',
                  ),
                  frequency: InfoText(
                    title: LocaleKeys
                        .general_alertDialogs_DetailDialog_frequencyNumber,
                    descriptions: '${element.frequencyNumber} / 1',
                  ),
                  locationImage: InfoText(
                    title: LocaleKeys
                        .general_alertDialogs_DetailDialog_LokasyonImage,
                    locationImage: Assets.icons
                        .getIconsWithPath(
                          path: element.imagePath,
                        )
                        .provider(package: 'gen'),
                  ),
                  location: InfoText(
                    title:
                        LocaleKeys.general_alertDialogs_DetailDialog_location,
                    descriptions: '${AppGeneralFunction.formatCoordinate(
                      element.latitude,
                      2,
                    )} - ${AppGeneralFunction.formatCoordinate(
                      element.longitude,
                      2,
                    )}',
                  ),
                  negativeButton: LocaleKeys
                      .general_alertDialogs_DetailDialog_negativeButton,
                  negativeButtonOnPressed: () {
                    Navigator.pop(context);
                    PositiveAndNegativeAlertDialog.show(
                      context,
                      title:
                          '${element.name} ${LocaleKeys.general_alertDialogs_PositiveAndNegativeAlertDialog_title.tr()}',
                      content: LocaleKeys
                          .general_alertDialogs_PositiveAndNegativeAlertDialog_content,
                      positiveButton: LocaleKeys
                          .general_alertDialogs_PositiveAndNegativeAlertDialog_positiveButton,
                      positiveButtonOnPressed: () => context.route.pop(),
                      negativeButton: LocaleKeys
                          .general_alertDialogs_PositiveAndNegativeAlertDialog_negativeButton,
                      negativeButtonOnPressed: () {
                        // viewModel.deleteSelectedLocation(
                        //   location: state.fetchingData![index]!,
                        // );
                        // context.route.pop();
                      },
                    );
                  },
                );
              },
            ),
          ),
        );
        cirlceList.add(
          Circle(
            circleId: CircleId(element.name),
            center: LatLng(element.latitude, element.longitude),
            radius: element.distance.toDouble(),
            strokeColor: Colors.red,
            fillColor: Colors.red.shade100.withOpacity(0.4),
            strokeWidth: 1,
          ),
        );
      }
    }
    emit(
      state.copyWith(
        creatingCircles: cirlceList,
        fetchingMarker: markerList,
      ),
    );
  }

  Future<Uint8List> _getBytesFromAssets(String path, int width) async {
    final data = await rootBundle.load(path);
    final codec = await ui.instantiateImageCodec(
      data.buffer.asUint8List(),
      targetWidth: width,
    );
    final fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  Future<BitmapDescriptor> _getCustomMarker({required String imagePath}) async {
    final autoDosemeMarkerIcon = await _getBytesFromAssets(imagePath, 100);
    return BitmapDescriptor.fromBytes(autoDosemeMarkerIcon);
  }

  // Future functionName(List args) {
  // return Null;
  // }


}
