import 'package:flutter/material.dart';
import 'package:flutter_maps_note/utility/widget/buttons/custom_general_button.dart';

/// bottom sheet button design
class BottomSheetButton extends CustomGeneralButton {
  /// constructor

  /// colors value
  late final Color buttonColor;

  BottomSheetButton({
    required super.onPressed,
    required super.child,
    required this.buttonColor,
    super.key,
  }) : super(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
          ),
        );
}
