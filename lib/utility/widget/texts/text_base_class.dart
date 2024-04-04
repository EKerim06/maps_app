import 'package:flutter/material.dart';

///Custom text base class
class TextBaseClass extends StatelessWidget {
  ///custom base class constructor
  const TextBaseClass({
    required this.textStyle,
    required this.message,
    super.key,
  });

  ///show message
  final String message;

  ///text style
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: textStyle,
    );
  }
}
