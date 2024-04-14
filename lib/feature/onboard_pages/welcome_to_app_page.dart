import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_maps_note/core/localization/locale_keys.g.dart';
import 'package:flutter_maps_note/feature/onboard_pages/base_class/onboard_page_base_class.dart';
import 'package:flutter_maps_note/feature/onboard_pages/location/location_explain_page.dart';
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
      message: const Text(
        LocaleKeys.onboardPages_WelcomeToAppPage_welcomeMessage,
        textAlign: TextAlign.center,
      ).tr(),
      elevatedButton: NormalButtons(
        onPressed: () =>
            context.route.navigateToPageAndRemove(const LocationExplainPage()),
        width: context.sized.width,
        margin: context.padding.horizontalLow,
        child: const Text(
          LocaleKeys.onboardPages_WelcomeToAppPage_welcomeToAppPageButton,
        ).tr(),
      ),
    );
  }
}
