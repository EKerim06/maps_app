import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class InfoText extends StatelessWidget {
  const InfoText({
    required this.title,
    this.locationImage,
    this.descriptions,
    super.key,
  });

  final String title;
  final String? descriptions;
  final ImageProvider? locationImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title.tr(),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Text(' : '),
        if (descriptions != null)
          Expanded(
            child: Text(
              descriptions!.tr(),
              overflow: TextOverflow.ellipsis,
            ),
          )
        else
          Expanded(
            child: Image(
              image: locationImage!,
              height: context.sized.dynamicHeight(.05),
            ),
          ),
      ],
    );
  }
}
