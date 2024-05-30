import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_maps_note/utility/widget/texts/info_text.dart';
import 'package:kartal/kartal.dart';

class DetailDialog {
  static void show(
    BuildContext context, {
    required String title,
    required String positiveButton,
    required VoidCallback positiveButtonOnPressed,
    required InfoText locationName,
    required InfoText locationImage,
    required InfoText location,
    VoidCallback? negativeButtonOnPressed,
    String? content,
    String? negativeButton,
  }) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return Dialog(
          // shape: Border.all(),
          insetPadding: context.padding.medium,
          child: Container(
            padding: context.padding.medium,
            // width: context.sized.dynamicHeight(.8),
            height: context.sized.dynamicHeight(.40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // context.sized.emptySizedHeightBoxLow3x,
                Text(
                  title.tr(),
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                context.sized.emptySizedHeightBoxLow3x,
                locationName,
                context.sized.emptySizedHeightBoxLow3x,
                locationImage,
                context.sized.emptySizedHeightBoxLow3x,
                location,
                context.sized.emptySizedHeightBoxLow3x,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan.shade200,
                      ),
                      onPressed: positiveButtonOnPressed,
                      child: Text(
                        positiveButton.tr(),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    context.sized.emptySizedWidthBoxLow3x,
                    if (negativeButton != null)
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        onPressed: negativeButtonOnPressed,
                        child: Text(
                          negativeButton.tr(),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
