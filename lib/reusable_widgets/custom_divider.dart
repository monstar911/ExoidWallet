import 'package:flutter/material.dart';

import '../utils/colors/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      indent: 58,
      thickness: 2,
      color: CColors.whiteColor.withOpacity(
        0.25,
      ),
    );
  }
}

class CustomDividerSecondary extends StatelessWidget {
  const CustomDividerSecondary({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      indent: 12,
      endIndent: 11,
      thickness: 2,
      color: CColors.whiteColor.withOpacity(
        0.25,
      ),
    );
  }
}
