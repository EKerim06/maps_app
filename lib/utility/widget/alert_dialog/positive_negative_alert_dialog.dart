import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class PositiveAndNegativeAlertDialog {
  static void show(
    BuildContext context, {
    required String title,
    required String content,
    required String positiveButton,
    required VoidCallback positiveButtonOnPressed,
    VoidCallback? negativeButtonOnPressed,
    String? negativeButton,
  }) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title).tr(),
          content: Text(content).tr(),
          actions: [
            ElevatedButton(
              onPressed: positiveButtonOnPressed,
              child: Text(positiveButton).tr(),
            ),
            if (negativeButton != null || negativeButtonOnPressed != null)
              ElevatedButton(
                onPressed: negativeButtonOnPressed,
                child: Text(negativeButton!).tr(),
              ),
          ],
        );
      },
    );
  }
}
