import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_maps_note/core/cache/hive/hive_local_storage_manager.dart';
import 'package:flutter_maps_note/core/cache/hive/hive_local_storage_service.dart';
import 'package:flutter_maps_note/core/localization/locale_keys.g.dart';
import 'package:flutter_maps_note/core/models/local_storage_model/save_location.dart';
import 'package:flutter_maps_note/feature/home/bottom_sheet/cubit/bottom_sheet_cubit.dart';
import 'package:flutter_maps_note/feature/home/bottom_sheet/custom_bottom_sheet_mixin.dart';
import 'package:flutter_maps_note/utility/func/general/general_func.dart';
import 'package:flutter_maps_note/utility/func/validate/validate_fun.dart';
import 'package:flutter_maps_note/utility/widget/buttons/bottom_sheet_button/custom_bottom_sheet_button.dart';
import 'package:flutter_maps_note/utility/widget/custom_text_form_field/custom_text_form_field.dart';
import 'package:flutter_maps_note/utility/widget/dropdown_button_formfield/custom_dropdown_button_form_field.dart';
import 'package:flutter_maps_note/utility/widget/texts/center_text.dart';
import 'package:gen/gen/colors.gen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kartal/kartal.dart';

late BottomSheetCubit viewModel;

///Home page custom bottom sheet
class CustomDraggableScrollableSheet extends StatefulWidget {
  ///custom bottom sheet constructor
  const CustomDraggableScrollableSheet({
    required this.formKey,
    required this.location,
    super.key,
  });

  ///Form state managnment key
  final GlobalKey<FormState> formKey;

  ///location varible
  final LatLng location;

  @override
  State<CustomDraggableScrollableSheet> createState() =>
      _CustomDraggableScrollableSheetState();
}

class _CustomDraggableScrollableSheetState
    extends State<CustomDraggableScrollableSheet> with BottomSheetMixin {
  @override
  Widget build(BuildContext context) {
    viewModel = BottomSheetCubit();

    return BlocProvider(
      create: (context) => viewModel,
      child: DraggableScrollableSheet(
        initialChildSize: context.sized.dynamicHeight(0.0001),
        minChildSize: context.sized.dynamicHeight(0.0001),
        maxChildSize: context.sized.dynamicHeight(0.0008),
        builder: (
          BuildContext context,
          ScrollController scrollController,
        ) {
          return Form(
            key: widget.formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Padding(
              padding: context.padding.onlyTopLow,
              child: _DraggableContainer(
                formKey: widget.formKey,
                scrollController: scrollController,
                location: widget.location,
              ),
            ),
          );
        },
      ),
    );
  }
}

class _DraggableContainer extends StatelessWidget {
  const _DraggableContainer({
    required this.formKey,
    required this.scrollController,
    required this.location,
  });

  final GlobalKey<FormState> formKey;
  final ScrollController scrollController;
  final LatLng location;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorName.secondery,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(64),
          topRight: Radius.circular(64),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          right: context.sized.normalValue,
          left: context.sized.normalValue,
        ),
        // padding: EdgeInsets.only(),
        child: _DraggableListView(
          scrollController: scrollController,
          formKey: formKey,
          location: location,
        ),
      ),
    );
  }
}

@immutable
final class _DraggableListView extends StatefulWidget {
  const _DraggableListView({
    required this.scrollController,
    required this.formKey,
    required this.location,
  });

  final ScrollController scrollController;
  final GlobalKey<FormState> formKey;

  final LatLng location;

  @override
  State<_DraggableListView> createState() => _DraggableListViewState();
}

class _DraggableListViewState extends State<_DraggableListView> {
  late ValueNotifier<int> selectedItems;

  late final HiveManager _manager;

  late final TextEditingController nameController;

  late final TextEditingController frequencyController;

  int selectedDistance = 150;

  int selectedAgainNumber = 3;

  int selectedFrequency = 30;

  // late final PageController pageController;

  @override
  void initState() {
    _manager = HiveService();
    nameController = TextEditingController();
    frequencyController = TextEditingController();

    super.initState();
  }

  Future<void> saveLocation({required SaveLocation location}) async {
    await _manager.saveLocation(location: location);
  }

  @override
  Widget build(BuildContext context) {
    final imageList = AppGeneralFunction.homePageCategoryImageCreate();
    final imagePathList = AppGeneralFunction.categoryImagePath();

    var selectedImagePath = '';

    selectedItems = ValueNotifier<int>(-1); // Başlangıçta seçili bir eleman yok

    return BlocConsumer<BottomSheetCubit, BottomSheetState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView(
          controller: widget.scrollController,
          children: [
            Container(
              height: context.sized.height * .007,
              margin: EdgeInsets.only(
                left: context.sized.width * .3,
                right: context.sized.width * .3,
                top: context.sized.height * .02,
              ),
              decoration: BoxDecoration(
                color: ColorName.main,
                borderRadius: context.border.highBorderRadius,
              ),
            ),
            const ListTile(
              title: CenterText(
                // message: LocaleKeys.LocaleKeys.general_updatingArea_HomePage_mapsOnTapUpdate,
                message:
                    LocaleKeys.general_updatingArea_HomePage_mapsOnTapUpdate,
              ),
            ),
            const ListTile(
              title: CenterText(
                message: LocaleKeys
                    .general_updatingArea_HomePage_mapsOnTapUserInformation,
              ),
            ),
            CustomTextFormField(
              controller: nameController,
              onFieldSubmitted: (newValue) {},
              validator: Validation.locationNameControl,
              labelText: LocaleKeys.HomePage_BottomSheet_textFormFieldHint,
            ),
            GridView.builder(
              itemCount: imageList.length,
              padding: EdgeInsets.only(
                // left: context.padding.onlyLeftMedium.left,
                right: context.padding.onlyRightMedium.right,
                top: context.padding.onlyBottomMedium.bottom,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.5,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ValueListenableBuilder<int>(
                  builder: (context, value, child) {
                    return GestureDetector(
                      onTap: () => selectedItems.value = index,
                      child: Stack(
                        children: [
                          Center(
                            child: imageList[index],
                          ),
                          if (selectedItems.value == index)
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: context.sized.width * .06,
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                  valueListenable: selectedItems,
                );
              },
            ),
            context.sized.emptySizedHeightBoxNormal,
            // ! Selected distance meter
            CustomDropdownFormField(
              items: AppGeneralFunction.bottomSheetDropDownDistanceMeter(),
              onChanged: (value) =>
                  value != null ? selectedDistance = value : null,
              helperText:
                  LocaleKeys.HomePage_BottomSheet_bottomSheetDistanceHelperText,
              initialValue: selectedDistance,
            ),
            context.sized.emptySizedHeightBoxNormal,
            // ! Selected number of again
            CustomDropdownFormField(
              items: AppGeneralFunction.bottomSheetDropDownAgainItems(),
              onChanged: (value) =>
                  value != null ? selectedAgainNumber = value : null,
              helperText:
                  LocaleKeys.HomePage_BottomSheet_bottomSheetAgainHelperText,
              initialValue: selectedAgainNumber,
            ),
            context.sized.emptySizedHeightBoxNormal,
            CustomDropdownFormField(
              items: AppGeneralFunction.bottomSheetDropDownFrequency(),
              onChanged: (value) {
                if (value != null) {
                  selectedFrequency = value;

                  value == 0
                      ? viewModel.isOtherSelected(isSelect: true)
                      : viewModel.isOtherSelected(isSelect: false);
                }
              },
              helperText: LocaleKeys
                  .HomePage_BottomSheet_bottomSheetFrequencyHelperText,
              initialValue: selectedFrequency,
            ),

            context.sized.emptySizedHeightBoxNormal,

            if (state.isOtherSelected ?? false)
              CustomTextFormField(
                controller: frequencyController,
                keyboardType: TextInputType.number,
                onFieldSubmitted: (newValue) {},
                validator: Validation.frequencyValidator,
                labelText: LocaleKeys
                    .HomePage_BottomSheet_bottomSheetFrequencyOtherSelectedTextFormFieldHint,
              )
            else
              const SizedBox(),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BottomSheetButton(
                  buttonColor: ColorName.negativeColor,
                  child: const Text(
                    LocaleKeys
                        .HomePage_BottomSheet_bottomSheetButtonCancelButton,
                  ).tr(),
                  onPressed: () {},
                ),
                SizedBox(
                  width: context.sized.dynamicWidth(.09),
                ),
                BottomSheetButton(
                  onPressed: () {
                    if (widget.formKey.currentState?.validate() ?? false) {
                      selectedImagePath = imagePathList[selectedItems.value];
                      final saveToLocation = SaveLocation(
                        name: nameController.text,
                        latitude: widget.location.latitude,
                        longitude: widget.location.longitude,
                        imagePath: selectedImagePath,
                        distance: selectedDistance,
                        againsNumber: selectedAgainNumber,
                        frequencyNumber: selectedFrequency != 0
                            ? selectedFrequency
                            : frequencyController.text.isNotEmpty
                                ? int.tryParse(frequencyController.text) ?? 0
                                : 1,
                      );
                      saveLocation(location: saveToLocation);
                      // pageController.jumpToPage(1);
                    }
                  },
                  buttonColor: ColorName.main,
                  child: const Text(
                    LocaleKeys
                        .HomePage_BottomSheet_bottomSheetButtonConfirmButton,
                  ).tr(),
                ),
                context.sized.emptySizedHeightBoxHigh,
              ],
            ),
          ],
        );
      },
    );
  }
}
