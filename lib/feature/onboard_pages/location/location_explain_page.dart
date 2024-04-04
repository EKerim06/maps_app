import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_maps_note/constants/string_constants.dart';
import 'package:flutter_maps_note/feature/onboard_pages/location/cubit/location_cubit.dart';
import 'package:flutter_maps_note/feature/onboard_pages/onboard_page_base_class.dart';
import 'package:flutter_maps_note/utility/widget/buttons/normal_buttom/normal_buttons.dart';
import 'package:flutter_maps_note/utility/widget/toast_message.dart';
import 'package:gen/gen/assets.gen.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kartal/kartal.dart';

///Location Explain Page
class LocationExplainPage extends StatefulWidget {
  ///Location explain page constructor
  const LocationExplainPage({
    super.key,
  });

  @override
  State<LocationExplainPage> createState() => _LocationExplainPageState();
}

class _LocationExplainPageState extends State<LocationExplainPage> {
  late final LocationCubit viewModel;
  @override
  void initState() {
    super.initState();

    viewModel = LocationCubit();
  }

  void getLcation() {
    Geolocator.checkPermission().then((request) {
      if (Platform.isIOS) {
        if (request != LocationPermission.whileInUse) {
          print('ios permission denied');
          Geolocator.requestPermission();
        } else {
          print('ios permission granted');
          viewModel.permissionOK();
        }
      } else {
        if (Platform.isAndroid) {
          if (request == LocationPermission.denied) {
            print('permission denied');
            Geolocator.requestPermission();
          } else {
            print('permission granted');
            viewModel.permissionOK();
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => viewModel,
      child: BlocConsumer<LocationCubit, LocationState>(
        listener: (context, state) {},
        builder: (context, state) {
          return OnBoardPageBaseClass(
            elevatedButton: NormalButtons(
              onPressed: () {
                getLcation();
                (state.isRequiredPermission ?? false)
                    ? CustomToastMessage.createToastMessage(
                        context: context,
                        message: 'permission granter',
                      )
                    : CustomToastMessage.createToastMessage(
                        context: context,
                        message: 'Permission Denied',
                      );
                print('${viewModel.state.position}');
              },

              // width: context.sized.width,
              // margin: context.padding.horizontalLow,
              child: Text(StringConstants.onboardButtonExplainLocationOkey),
            ),
            imageSVG: Assets.image.locationExplainPageImage.svg(
              package: 'gen',
              height: context.sized.dynamicHeight(0.3),
            ),
            message: Padding(
              padding: context.padding.horizontalMedium,
              child: Text(
                StringConstants.explainPermission,
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
