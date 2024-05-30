import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SavePageCustomAppbar extends AppBar {
    SavePageCustomAppbar({super.key, 
    String? titleText,
    List<Widget>? actions,
    PreferredSizeWidget? bottom,
    bool centerTitle = false,
    Color backgroundColor = Colors.white,
    bool automaticallyImplyLeading  = false,
    Widget? leading,
    double elevation = 4.0,
    Widget? flexibleSpace,
    ShapeBorder? shape,
    TextStyle? titleTextStyle,
  }) : super(
          title: Text(
            titleText ?? 'Default Title',
            style: titleTextStyle ?? TextStyle(color: Colors.black),
          ).tr(),
          actions: actions,
          bottom: bottom,
          centerTitle: centerTitle,
          backgroundColor: backgroundColor,
          leading: leading,
          elevation: elevation,
          flexibleSpace: flexibleSpace,
          shape: shape,
          automaticallyImplyLeading: automaticallyImplyLeading,
        );

}
