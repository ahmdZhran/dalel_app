import 'package:dalel_app/core/utls/app_color.dart';
import 'package:dalel_app/core/utls/text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.labelText});
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 24),
      child: TextField(
        decoration: InputDecoration(
            labelText: labelText,
            labelStyle: CustomTextStyles.pacifico400style64
                .copyWith(fontSize: 18, color: AppColors.grey),
            enabledBorder: getOutInputBorder(),
            focusedBorder: getOutInputBorder()),
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
