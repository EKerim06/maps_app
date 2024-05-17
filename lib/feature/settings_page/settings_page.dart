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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(LocaleKeys.SettingPage_Features_language)
                    .tr(),
                DropdownButton(
                  hint: Text(
                    CustomLocalization.currentLanguage(context: context),
                  ),
                  items: const [
                    DropdownMenuItem<Locales>(
                      value: Locales.en,
                      child: Text('US'),
                    ),
                    DropdownMenuItem<Locales>(
                      value: Locales.tr,
                      child: Text('TR'),
                    ),
                  ],
                  onChanged: (value) {
                    value != null
                        ? CustomLocalization.updateLanguage(
                            context: context,
                            value: value,
                          )
                        : null;
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
