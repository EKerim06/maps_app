import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SavePageCustomAppbar extends AppBar {
  SavePageCustomAppbar({
    super.key,
    String? titleText,
    super.actions,
    super.bottom,
    bool super.centerTitle = false,
    Color super.backgroundColor = Colors.white,
    super.automaticallyImplyLeading = false,
    super.leading,
    double super.elevation = 4.0,
    super.flexibleSpace,
    super.shape,
    TextStyle? titleTextStyle,
  }) : super(
          title: Text(
            titleText ?? 'Default Title',
            style: titleTextStyle ?? const TextStyle(color: Colors.black),
          ).tr(),
        );
}
