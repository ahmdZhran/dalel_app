import 'package:flutter/material.dart';

import '../../../../core/utls/app_color.dart';
import '../../../../core/utls/text_styles.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField(
      {super.key,
      required this.labelText,
      this.onChanged,
      this.suffixIcon,
      this.obscureText = false,
      this.onFieldSubmitted});
  final String labelText;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final bool obscureText;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 24),
      child: TextFormField(
        obscureText: obscureText,
        validator: (value) {
          return value!.isEmpty ? "this field is required" : null;
        },
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          labelText: labelText,
          labelStyle: CustomTextStyles.pacifico400style64
              .copyWith(fontSize: 18, color: AppColors.grey),
          enabledBorder: getOutInputBorder(),
          focusedBorder: getOutInputBorder(),
        ),
      ),
    );
  }
}

OutlineInputBorder getOutInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: const BorderSide(),
  );
}
