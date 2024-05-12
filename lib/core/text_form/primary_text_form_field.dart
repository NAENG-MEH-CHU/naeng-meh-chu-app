import 'package:flutter/material.dart';
import 'package:naeng_meh_chu/core/base/base_text_form_field.dart';
import 'package:naeng_meh_chu/core/theme/naeng_meh_chu_theme_color.dart';

class PrimaryTextFormField extends StatelessWidget implements BaseTextFormField {
  const PrimaryTextFormField(
      {super.key,
        this.maxLength,
        this.maxLines,
        this.minLines,
        this.hintText,
        this.initialValue,
        this.errorText,
        this.errorBorder,
        this.errorStyle,
        this.onChanged,});

  @override
  final String? hintText;
  @override
  final int? maxLength;
  @override
  final int? minLines;
  @override
  final int? maxLines;
  @override
  final String? initialValue;
  @override
  final String? errorText;
  @override
  final OutlineInputBorder? errorBorder;
  @override
  final TextStyle? errorStyle;
  @override
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      maxLength: maxLength,
      minLines: minLines,
      maxLines: maxLines,
      expands: (minLines == null && maxLines == null) ? true : false,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: NaengMehChuThemeColor.gray2,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: NaengMehChuThemeColor.gray1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: NaengMehChuThemeColor.pink1,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: NaengMehChuThemeColor.gray1,
            ),
          ),
          errorText: errorText,
          errorBorder: errorBorder,
          errorStyle: errorStyle,
      ),
      onChanged: onChanged,
    );
  }
}

