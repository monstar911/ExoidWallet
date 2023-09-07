import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';

class BackgroundContainerWidget extends StatelessWidget {
  final Widget widget;

  const BackgroundContainerWidget({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20,
        ),
        color: CColors.primaryButtonColor,
      ),
      child: widget,
    );
  }
}
