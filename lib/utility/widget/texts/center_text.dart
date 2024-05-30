import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

/// Center text
class CenterText extends StatelessWidget {
  const CenterText({
    required this.message,
    super.key,
  });
  ///center text constructor
  final String message;

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      textAlign: TextAlign.center,
    ).tr();
  }
}
