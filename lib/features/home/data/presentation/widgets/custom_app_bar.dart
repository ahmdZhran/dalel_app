import 'package:flutter/material.dart';

import '../../../../../core/utls/app_strings.dart';
import '../../../../../core/utls/text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          Text(
            AppStrings.appName,
            style: CustomTextStyles.pacifico400style64.copyWith(fontSize: 26),
          ),
        ],
      ),
    );
  }
}
