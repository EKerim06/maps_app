import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_maps_note/core/cache/hive/hive_local_storage_manager.dart';
import 'package:flutter_maps_note/core/cache/hive/hive_local_storage_service.dart';
import 'package:flutter_maps_note/core/localization/locale_keys.g.dart';
import 'package:flutter_maps_note/feature/save_page/cubit/save_cubit.dart';
import 'package:flutter_maps_note/feature/save_page/save_page_appbar/save_page_custom_appbar.dart';
import 'package:flutter_maps_note/utility/func/general/general_func.dart';
import 'package:flutter_maps_note/utility/widget/alert_dialog/detail_dialog.dart';
import 'package:flutter_maps_note/utility/widget/alert_dialog/positive_negative_alert_dialog.dart';
import 'package:flutter_maps_note/utility/widget/texts/info_text.dart';
import 'package:gen/gen/assets.gen.dart';
import 'package:kartal/kartal.dart';

class SavePage extends StatefulWidget {
  const SavePage({super.key});

  @override
  _SavePageState createState() => _SavePageState();
}

class _SavePageState extends State<SavePage> {
  late final SaveCubit viewModel;

  late final HiveManager service;

  @override
  void initState() {
    service = HiveService();
    viewModel = SaveCubit(manager: service);
    viewModel.fetchData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => viewModel,
      child: BlocConsumer<SaveCubit, SaveState>(
        listener: (context, state) {
          state.fetchingData;
        },
        builder: (context, state) {
          return Scaffold(
            appBar: SavePageCustomAppbar(
              titleText: LocaleKeys.SavePage_Appbar_titleText,
              actions: [
                IconButton(
                  // style: ElevatedButton.styleFrom().,
                  onPressed: () {
                    PositiveAndNegativeAlertDialog.show(
                      context,
                      title: LocaleKeys
                          .SavePage_Appbar_actions_deleteAllDataAlertDialog_title,
                      content: LocaleKeys
                          .SavePage_Appbar_actions_deleteAllDataAlertDialog_content,
                      positiveButton: LocaleKeys
                          .SavePage_Appbar_actions_deleteAllDataAlertDialog_positiveButton,
                      positiveButtonOnPressed: () {
                        viewModel.deleteAllData();
                        context.route.pop();
                      },
                      negativeButton: LocaleKeys
                          .SavePage_Appbar_actions_deleteAllDataAlertDialog_negativeButton,
                      negativeButtonOnPressed: () {
                        context.route.pop();
                      },
                    );
                  },
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
            body: (state.isLoading ?? true)
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : state.fetchingData?.isEmpty ?? true
                    ? Center(
                        child: const Text(LocaleKeys.SavePage_Body_listEmpty).tr(),
                      )
                    : ListView.builder(
                        itemCount: state.fetchingData?.length,
                        itemBuilder: (context, index) {
                          final locationImage = Assets.icons
                              .getIconsWithPath(
                                  path: state.fetchingData![index]!.imagePath)
                              .provider(package: 'gen');
                          return Card(
                            elevation: 8,
                            child: ListTile(
                              onTap: () {
                                DetailDialog.show(
                                  context,
                                  title:
                                      '${state.fetchingData![index]!.name} ${LocaleKeys.general_alertDialogs_DetailDialog_title.tr()}',
                                  // content: '',
                                  positiveButton: LocaleKeys
                                      .general_alertDialogs_DetailDialog_positiveButton,
                                  positiveButtonOnPressed: () {
                                    context.route.pop();
                                  },
                                  locationName: InfoText(
                                    title: LocaleKeys
                                        .general_alertDialogs_DetailDialog_locationName,
                                    descriptions:
                                        state.fetchingData![index]!.name,
                                  ),
                                  locationImage: InfoText(
                                    title: LocaleKeys
                                        .general_alertDialogs_DetailDialog_LokasyonImage,
                                    locationImage: locationImage,
                                  ),
                                  location: InfoText(
                                    title: LocaleKeys
                                        .general_alertDialogs_DetailDialog_location,
                                    descriptions:
                                        '${AppGeneralFunction.formatCoordinate(
                                      state.fetchingData![index]!.latitude,
                                      2,
                                    )} - ${AppGeneralFunction.formatCoordinate(
                                      state.fetchingData![index]!.longitude,
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
                                          '${state.fetchingData![index]!.name} ${LocaleKeys.general_alertDialogs_PositiveAndNegativeAlertDialog_title.tr()}',
                                      content: LocaleKeys
                                          .general_alertDialogs_PositiveAndNegativeAlertDialog_content,
                                      positiveButton: LocaleKeys
                                          .general_alertDialogs_PositiveAndNegativeAlertDialog_positiveButton,
                                      positiveButtonOnPressed: () =>
                                          context.route.pop(),
                                      negativeButton: LocaleKeys
                                          .general_alertDialogs_PositiveAndNegativeAlertDialog_negativeButton,
                                      negativeButtonOnPressed: () {
                                        viewModel.deleteSelectedLocation(
                                          location: state.fetchingData![index]!,
                                        );
                                        context.route.pop();
                                      },
                                    );
                                  },
                                );
                              },
                              trailing: const Icon(Icons.navigate_next),
                              leading: Image(image: locationImage),
                              title: Text(state.fetchingData![index]!.name),
                              subtitle: Text(
                                '${LocaleKeys.SavePage_Body_savedDataLocationName.tr()} : ${state.fetchingData![index]!.latitude} - ${state.fetchingData![index]!.longitude}',
                              ),
                            ),
                          );
                        },
                      ),
          );
        },
      ),
    );
  }
}
