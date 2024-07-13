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
    required InfoText againsNumber,
    required InfoText remainingAgainsNumber,
    required InfoText frequency,
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
            height: context.sized.dynamicHeight(.55),
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
                frequency,
                context.sized.emptySizedHeightBoxLow3x,
                againsNumber,
                context.sized.emptySizedHeightBoxLow3x,
                remainingAgainsNumber,
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
                      style: ElevatedButton.styleFrom(),
                      onPressed: () {},
                      child: const Text('Guncelle'),
                    ),
                    context.sized.emptySizedWidthBoxLow3x,
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
                    context.sized.emptySizedWidthBoxLow,
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
