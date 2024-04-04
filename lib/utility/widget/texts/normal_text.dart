import 'package:flutter/material.dart';
import 'package:flutter_maps_note/utility/widget/texts/text_base_class.dart';

///Normal Text
class NormalText extends StatelessWidget {
  ///Normal Text constructor
  const NormalText({
    required this.message,
    super.key,
  });

  /// Message
  final String message;

  @override
  Widget build(BuildContext context) {
    return TextBaseClass(
      textStyle: TextStyle(color: Colors.black,),
      message: message,
    );
  }
}
