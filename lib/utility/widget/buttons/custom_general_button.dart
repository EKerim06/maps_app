import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

///
class CustomGeneralButton extends StatelessWidget {
  ///
  const CustomGeneralButton({
    required this.onPressed,
    required this.child,
    this.padding,
    this.margin,
    this.height,
    this.style,
    this.width,
    super.key,
  });

  ///elevated button stylr
  final ButtonStyle? style;

  ///on pressed methot
  final VoidCallback onPressed;

  ///button child
  final Widget child;

  ///Custom padding value
  final EdgeInsets? padding;

  ///Custom Margin value
  final EdgeInsets? margin;

  ///custom width value
  ///is null full width
  final double? width;

  ///is height value
  ///is null default value
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      padding: padding,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: style,
        child: child,
      ),
    );
  }
}
