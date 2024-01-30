import 'package:flutter/material.dart';

import '../../../../core/functions/navigator_method.dart';
import '../../../../core/utls/app_strings.dart';
import '../../../../core/utls/text_styles.dart';

class ForgotPasswordTextWidget extends StatelessWidget {
  const ForgotPasswordTextWidget({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: GestureDetector(
        onTap: () {
          customReplacementNavigate(context, 'path');
        },
        child: Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: onTap,
            child: Text(
              AppStrings.forgotPassword,
              style: CustomTextStyles.poppins600style28.copyWith(fontSize: 12),
            ),
          ),
        ),
      ),
    );
  }
}
