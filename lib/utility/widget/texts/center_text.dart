import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

/// Center text
class CenterText extends StatelessWidget {
  ///center text constructor
  final String message;
  const CenterText({
    required this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      textAlign: TextAlign.center,
    ).tr();
  }
}
