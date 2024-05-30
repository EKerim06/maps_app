import 'package:flutter/material.dart';
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
  static List<DropdownMenuItem<int>> bottomSheetDropDownItems() {
    return [
      const DropdownMenuItem(value: 500, child: Text('500 Metre')),
      const DropdownMenuItem(value: 1000, child: Text('1000 Metre')),
      const DropdownMenuItem(value: 1500, child: Text('1500 Metre')),
      const DropdownMenuItem(value: 2000, child: Text('2000 Metre')),
    ];
  }

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
}
