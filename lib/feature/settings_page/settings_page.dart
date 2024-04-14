import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_maps_note/constants/enum/locales.dart';
import 'package:flutter_maps_note/core/localization/custom_localization.dart';
import 'package:flutter_maps_note/core/localization/locale_keys.g.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          CustomLocalization.updateLanguage(
            context: context,
            value:  Locales.en,
          );
        },
        child: const Text(LocaleKeys.general_buttons_languageChange).tr(),
      ),
    );
  }
}
