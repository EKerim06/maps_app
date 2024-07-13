import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends TextFormField {
  CustomTextFormField({
    required TextEditingController super.controller,
    required FormFieldSetter<String> super.onFieldSubmitted,
    required FormFieldValidator<String> super.validator,
    required String labelText,
    super.keyboardType,
    super.key,
  }) : super(
          decoration: InputDecoration(
            // helperText: 'asdas',
            label: Text(labelText).tr(),
            border: const OutlineInputBorder(),
          ),
        );
}
