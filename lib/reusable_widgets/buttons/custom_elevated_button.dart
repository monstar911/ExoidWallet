import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  final Function()? onPressedFunction;
  final String buttonText;
  final double height, width;

  const CustomElevatedButton({
    super.key,
    required this.onPressedFunction,
    required this.buttonText,
    required this.width,
    this.height = 55,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedFunction,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(
          width,
          height,
        ),
        backgroundColor: CColors.primaryButtonColor,
        shape: const StadiumBorder(),
      ),
      child: FittedBox(
        child: Text(
          buttonText,
          style: CustomTextStyles.mWhite516,
        ),
      ),
    );
  }
}
