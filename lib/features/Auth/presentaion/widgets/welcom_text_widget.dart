import 'package:flutter/material.dart';

import '../../../../core/utls/text_styles.dart';

class WelcomTextWidget extends StatelessWidget {
  const WelcomTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        text,
        style: CustomTextStyles.poppins600style28,
      ),
    );
  }
}
