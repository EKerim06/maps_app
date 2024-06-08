// ignore_for_file: lines_longer_than_80_chars

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_maps_note/core/localization/locale_keys.g.dart';
import 'package:gen/gen/assets.gen.dart';

///App general all function
class AppGeneralFunction {
  ///create image
  static List<Image> homePageCategoryImageCreate() {
    return [
      Image(
        image: Assets.icons.icBaby.provider(
          package: 'gen',
        ),
      ),
      Image(
        image: Assets.icons.icCarWash.provider(
          package: 'gen',
        ),
      ),
      Image(
        image: Assets.icons.icFood.provider(
          package: 'gen',
        ),
      ),
      Image(
        image: Assets.icons.icPets.provider(
          package: 'gen',
        ),
      ),
      Image(
        image: Assets.icons.icPharmacy.provider(
          package: 'gen',
        ),
      ),
      Image(
        image: Assets.icons.icShopBag.provider(
          package: 'gen',
        ),
      ),
    ];
  }

  /// create dropdownMenuEntry
  // static List<DropdownMenuItem<int>> bottomSheetDropDownItems() {
  //   return [
  //     const DropdownMenuItem(value: 500, child: Text('500 Metre')),
  //     const DropdownMenuItem(value: 1000, child: Text('1000 Metre')),
  //     const DropdownMenuItem(value: 1500, child: Text('1500 Metre')),
  //     const DropdownMenuItem(value: 2000, child: Text('2000 Metre')),
  //   ];
  // }

  static List<String> categoryImagePath() {
    return [
      Assets.icons.icBaby.path,
      Assets.icons.icCarWash.path,
      Assets.icons.icFood.path,
      Assets.icons.icPets.path,
      Assets.icons.icPharmacy.path,
      Assets.icons.icShopBag.path,
    ];
  }

  static String formatCoordinate(double coordinate, int decimalPlaces) {
    return coordinate.toStringAsFixed(decimalPlaces);
  }

  static Text _formatValue(String value, String keys) {
    return Text('$value' ' $keys');
  }

  static List<DropdownMenuItem<int>> bottomSheetDropDownAgainItems() {
    return [
      DropdownMenuItem(
        value: 1,
        child: _formatValue(
          '1',
          LocaleKeys.HomePage_BottomSheet_bottomSheetAgainText.tr(),
        ),
      ),
      DropdownMenuItem(
        value: 3,
        child: _formatValue(
          '3',
          LocaleKeys.HomePage_BottomSheet_bottomSheetAgainText.tr(),
        ),
      ),
      DropdownMenuItem(
        value: 5,
        child: _formatValue(
          '5 ',
          LocaleKeys.HomePage_BottomSheet_bottomSheetAgainText.tr(),
        ),
      ),
      DropdownMenuItem(
        value: 7,
        child: _formatValue(
          '7',
          LocaleKeys.HomePage_BottomSheet_bottomSheetAgainText.tr(),
        ),
      ),
      DropdownMenuItem(
        value: 0,
        child:
            const Text(LocaleKeys.HomePage_BottomSheet_bottomSheetAgainInfinity)
                .tr(),
      ),
    ];
  }

  static List<DropdownMenuItem<int>> bottomSheetDropDownDistanceMeter() {
    return [
      DropdownMenuItem(
        value: 150,
        child: _formatValue(
          '150 ',
          LocaleKeys.HomePage_BottomSheet_bottomSheetDistanceMeter.tr(),
        ),
      ),
      DropdownMenuItem(
        value: 200,
        child: _formatValue(
          '200',
          LocaleKeys.HomePage_BottomSheet_bottomSheetDistanceMeter.tr(),
        ),
      ),
      DropdownMenuItem(
        value: 250,
        child: _formatValue(
          '250',
          LocaleKeys.HomePage_BottomSheet_bottomSheetDistanceMeter.tr(),
        ),
      ),
      DropdownMenuItem(
        value: 300,
        child: _formatValue(
          '300',
          LocaleKeys.HomePage_BottomSheet_bottomSheetDistanceMeter.tr(),
        ),
      ),
      DropdownMenuItem(
        value: 350,
        child: _formatValue(
          '350',
          LocaleKeys.HomePage_BottomSheet_bottomSheetDistanceMeter.tr(),
        ),
      ),
    ];
  }

  static List<DropdownMenuItem<int>> bottomSheetDropDownFrequency() {
    return [
      const DropdownMenuItem(value: 7, child: Text('7 / 1')),
      const DropdownMenuItem(value: 14, child: Text('14 / 1')),
      const DropdownMenuItem(value: 30, child: Text('30 / 1')),
      const DropdownMenuItem(value: 180, child: Text('180 / 1')),
      const DropdownMenuItem(value: 365, child: Text('365 / 1')),
      DropdownMenuItem(
        value: 0,
        child: const Text(
          LocaleKeys.HomePage_BottomSheet_bottomSheetAgainHelperTextOther,
        ).tr(),
      ),
    ];
  }
}
