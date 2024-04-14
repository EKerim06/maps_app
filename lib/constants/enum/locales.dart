import 'package:flutter/material.dart';

///localization supported and config
enum Locales {
  /// support language tr
  tr(Locale('tr', 'TR')),

  /// support languange en
  en(Locale('en', 'US'));

  ///constructor
  const Locales(this.locale);

  /// locale veriable
  final Locale locale;
}
