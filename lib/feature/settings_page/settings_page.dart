import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_maps_note/constants/enum/locales.dart';
import 'package:flutter_maps_note/core/localization/custom_localization.dart';
import 'package:flutter_maps_note/core/localization/locale_keys.g.dart';
import 'package:flutter_maps_note/feature/settings_page/cubit/settingspage_cubit.dart';
import 'package:gen/gen/colors.gen.dart';
import 'package:kartal/kartal.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late final SettingspageCubit viewModel;

  @override
  void initState() {
    super.initState();

    viewModel = SettingspageCubit();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => viewModel,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Ayarlar'),
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: SafeArea(
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(LocaleKeys.SettingPage_Features_language).tr(),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Konum Arama Ayarlari'),
                    Row(
                      children: [
                        Tooltip(
                          padding: context.padding.low,
                          margin: context.padding.horizontalHigh,
                          showDuration: const Duration(minutes: 1),
                          message:
                              'Arama sonuçlarını değiştirmek için kullanın. Konuma göre veri alma, arama metnine uygun ve tek sonuç getiren arama, arama metnine göre konum gözetmeksizin arama',
                          triggerMode: TooltipTriggerMode.tap,
                          height: context.sized.dynamicHeight(0.05),
                          textStyle: const TextStyle(color: ColorName.text),
                          decoration: const BoxDecoration(
                            color: ColorName.main,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(24),
                              topLeft: Radius.circular(24),
                              bottomRight: Radius.circular(24),
                            ),
                          ),
                          child: const Icon(
                            Icons.question_mark_sharp,
                            color: Color.fromARGB(255, 155, 153, 153),
                          ),
                        ),
                        DropdownButton(
                          items: const [
                            DropdownMenuItem<String>(
                              child: Text('Tek sonuclu arama'),
                            ),
                            DropdownMenuItem<String>(
                              child: Text('Konuma gore coklu arama'),
                            ),
                            DropdownMenuItem<String>(
                              child: Text('Coklu arama'),
                            ),
                          ],
                          onChanged: (value) {
                            if (value != null) {
                              // todo : here search settings change. is one search response, location by distance or everyting search.
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
