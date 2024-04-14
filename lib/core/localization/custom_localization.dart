import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:flutter_maps_note/constants/enum/locales.dart';

/// easy localization support class
final class CustomLocalization extends EasyLocalization {
  ///easy localization constructor
  CustomLocalization({
    required super.child,
    super.key,
  }) : super(
          supportedLocales: _supportedLocales,
          useOnlyLangCode: true,
          path: _path,
        );

  static final _supportedLocales = [
    Locales.tr.locale,
    Locales.en.locale,
  ];

  static const String _path = 'assets/translations';

  /// updating to selected language
  static Future<void> updateLanguage({
    required BuildContext context,
    required Locales value,
  }) async {
    return context.setLocale(value.locale);
  }

}
