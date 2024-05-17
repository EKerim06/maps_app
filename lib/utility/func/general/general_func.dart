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
  static List<DropdownMenuEntry<int>> bottomSheetDropDownItems() {
    return [
      const DropdownMenuEntry(value: 1000, label: '500 m'),
      const DropdownMenuEntry(value: 1000, label: '750 m'),
      const DropdownMenuEntry(value: 1000, label: '1 km'),
      const DropdownMenuEntry(value: 1000, label: '1.5 km'),
      const DropdownMenuEntry(value: 1000, label: '2 km'),
    ];
  }



}
