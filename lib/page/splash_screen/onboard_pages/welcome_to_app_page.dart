import 'package:flutter/material.dart';
import 'package:flutter_maps_note/constants/string_constants.dart';
import 'package:flutter_maps_note/page/splash_screen/onboard_pages/location_explain_page.dart';
import 'package:flutter_maps_note/page/splash_screen/onboard_pages/onboard_page_base_class.dart';
import 'package:flutter_maps_note/utility/widget/buttons/normal_buttom/normal_buttons.dart';
import 'package:gen/gen/assets.gen.dart';
import 'package:kartal/kartal.dart';

///Welcome app page
class WelcomeToAppPage extends StatelessWidget {
  ///welcome app page consturctor
  const WelcomeToAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardPageBaseClass(
      imageSVG: Assets.image.welcomeToAppImage.svg(
        package: 'gen',
        height: context.sized.dynamicHeight(0.3),
      ),
      message: Text(
        StringConstants.welcomeToAppMessage,
        textAlign: TextAlign.center,
      ),
      elevatedButton: NormalButtons(
        onPressed: () =>
            context.route.navigateToPage(const LocationExplainPage()),
        width: context.sized.width,
        margin: context.padding.horizontalLow,
        child: Text(StringConstants.onbardButtonWelcomeToAppButton),
      ),
    );
  }
}
