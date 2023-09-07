import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../generated/assets.dart';
import '../../utils/colors/app_colors.dart';

class CustomFloatingButton extends StatelessWidget {
  final Function()? onPressedFunction;

  const CustomFloatingButton({super.key, required this.onPressedFunction});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      width: 85,
      child: FloatingActionButton(
        onPressed: onPressedFunction,
        shape: const CircleBorder(),
        backgroundColor: CColors.primaryColor,
        child: SvgPicture.asset(
          Assets.homepageImagesFloatingActionButtonIcon,
          height: 36,
          width: 36,
        ),
      ),
    );
  }
}
