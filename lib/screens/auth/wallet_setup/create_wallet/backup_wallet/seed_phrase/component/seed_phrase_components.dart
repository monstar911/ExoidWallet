import 'package:flutter/material.dart';

import '../../../../../../../utils/colors/app_colors.dart';
import '../../../../../../../utils/text_styles/text_styles.dart';

class SeedPhraseOptionContainer extends StatelessWidget {
  final int selectedIndex, itemIndex;
  final String text;
  final Function()? onTapFunction;
  final double height, width;

  const SeedPhraseOptionContainer(
      {super.key,
      required this.selectedIndex,
      required this.itemIndex,
      required this.onTapFunction,
      required this.text,
      this.width = 115,
      this.height = 55});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFunction,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            12,
          ),
          color: selectedIndex == itemIndex
              ? CColors.whiteColor
              : CColors.primaryButtonColor,
          border: Border.all(
            color: selectedIndex == itemIndex
                ? Colors.transparent
                : CColors.blackColor.withOpacity(0.1),
          ),
        ),
        child: FittedBox(
          child: Text(
            text,
            style: selectedIndex == itemIndex
                ? CustomTextStyles.mBlack516
                : CustomTextStyles.mWhite516,
          ),
        ),
      ),
    );
  }
}
