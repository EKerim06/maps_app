import 'package:flutter/material.dart';
import 'package:flutter_maps_note/constants/string_constants.dart';
import 'package:flutter_maps_note/page/splash_screen/onboard_pages/onboard_page_base_class.dart';
import 'package:flutter_maps_note/utility/widget/buttons/normal_buttom/normal_buttons.dart';
import 'package:gen/gen/assets.gen.dart';
import 'package:kartal/kartal.dart';

///Location Explain Page
class LocationExplainPage extends StatelessWidget {
  ///Location explain page constructor
  const LocationExplainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardPageBaseClass(
      elevatedButton: NormalButtons(
        onPressed: () {},
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
  }
}
