import 'package:flutter/material.dart';
import 'package:flutter_maps_note/utility/widget/buttons/custom_general_button.dart';
import 'package:kartal/kartal.dart';

///OnboardPage Base Class
class OnBoardPageBaseClass extends StatelessWidget {
  /// On boardPage base Class constructor
  const OnBoardPageBaseClass({
    required this.elevatedButton,
    required this.imageSVG,
    required this.message,
    super.key,
  });

  ///user to show image
  final Widget imageSVG;

  ///user to show message
  final Widget message;

  ///is clickable button
  final CustomGeneralButton elevatedButton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imageSVG,
            context.sized.emptySizedHeightBoxNormal,
            message,
            SizedBox(height: context.sized.dynamicHeight(0.05)),
            elevatedButton,
          ],
        ),
      ),
    );
  }
}
