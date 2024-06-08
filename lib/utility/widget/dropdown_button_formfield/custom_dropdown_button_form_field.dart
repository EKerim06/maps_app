import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomDropdownFormField extends FormField<int> {
  CustomDropdownFormField({
    required List<DropdownMenuItem<int>> items,
    required ValueChanged<int?> onChanged,
    required String helperText,
    required int? initialValue,
    super.key,
  }) : super(
          builder: (FormFieldState<int> field) {
            return DropdownButtonFormField<int>(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                // hintText: 'Olusacak cemberin capi',
                hintStyle: const TextStyle(color: Colors.black),
                helperText: helperText.tr(),
                helperMaxLines: 5,
              ),
              items: items,
              value: initialValue,
              onChanged: onChanged,
              onSaved: (newValue) {
                field.didChange(newValue);
              },
            );
          },
        );
}
