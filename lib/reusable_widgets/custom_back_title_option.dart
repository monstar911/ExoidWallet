import 'package:exoid/utils/alignment/widget_alignment.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../utils/colors/app_colors.dart';
import '../utils/text_styles/text_styles.dart';

class CustomBackTitleOption extends StatelessWidget {
  final String titleString, iconAssetString;

  const CustomBackTitleOption({
    super.key,
    required this.titleString,
    required this.iconAssetString,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: context.width * 1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          20.ph,
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: CColors.primaryButtonColor,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: CColors.whiteColor,
                      size: 20,
                    ),
                  ),
                ).alignWidget(
                  alignment: Alignment.topLeft,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      iconAssetString,
                      height: 34,
                    ),
                    2.ph,
                    Text(
                      titleString,
                      style: CustomTextStyles.gWhite730,
                    ),
                  ],
                ).alignWidget(
                  alignment: Alignment.bottomCenter,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
