import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


class CustomTextFormField extends TextFormField {
  CustomTextFormField({
    required TextEditingController controller,
    required FormFieldSetter<String> onFieldSubmitted,
    required FormFieldValidator<String> validator,
    required String labelText,
    TextInputType? keyboardType,
    super.key,
  }) : super(
          controller: controller,
          onFieldSubmitted: onFieldSubmitted,
          decoration: InputDecoration(
            // helperText: 'asdas',
            label: Text(labelText).tr(),
            border: const OutlineInputBorder(),
          ),
          validator: validator,
          keyboardType: keyboardType,
        );
}
