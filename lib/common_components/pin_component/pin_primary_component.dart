import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../generated/assets.dart';
import '../../reusable_widgets/app_bar/custom_appbar.dart';
import '../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../reusable_widgets/custom_keyboard.dart';
import '../../reusable_widgets/text_field/custom_pin_field.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class PinPrimaryComponent extends StatelessWidget {
  final String imageAsset, titleString, buttonString;
  final TextEditingController pinController;
  final String? Function(String?)? validatorFunction;
  final Function()? buttonOnPressedFunction;
  final bool needSmallTitle;
  final double imageHeight;

  const PinPrimaryComponent({
    super.key,
    required this.titleString,
    required this.buttonString,
    required this.pinController,
    required this.validatorFunction,
    required this.buttonOnPressedFunction,
    this.imageAsset = Assets.authImagesPinImage,
    this.imageHeight = 150,
    this.needSmallTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  imageAsset,
                  height: needSmallTitle ? 120 : imageHeight,
                ),
                20.ph,
                Text(
                  titleString,
                  style: needSmallTitle
                      ? CustomTextStyles.gWhite716
                      : CustomTextStyles.gWhite724,
                  textAlign: TextAlign.center,
                ),
                20.ph,
                CustomPinField(
                  pinController: pinController,
                  validatorFunction: validatorFunction,
                ),
                CustomKeyBoard(
                  pinTheme: PinTheme(
                    keysColor: CColors.whiteColor,
                  ),
                  onChanged: (valueEntered) {
                    pinController.text = valueEntered;
                  },
                  maxLength: 4,
                ),
                CustomElevatedButton(
                  buttonText: buttonString,
                  width: 200,
                  onPressedFunction: buttonOnPressedFunction,
                ),
                20.ph,
              ],
            ).paddingSymmetric(
              horizontal: 20,
              vertical: 10,
            ),
          ),
        ],
      ),
    );
  }
}
