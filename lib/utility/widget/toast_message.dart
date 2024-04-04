import 'package:flutter/material.dart';

///Custom toast message
class CustomToastMessage extends Scaffold {
  ///Custom toast Message constructor.
  const CustomToastMessage({super.key});

  ///Custom Toast Message
  static void createToastMessage({
    required String message,
    required BuildContext context,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
