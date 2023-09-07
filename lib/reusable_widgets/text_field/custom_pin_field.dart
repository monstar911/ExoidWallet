import 'package:exoid/utils/alignment/widget_alignment.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class CustomPinField extends StatelessWidget {
  final TextEditingController pinController;
  final String? Function(String?)? validatorFunction;

  const CustomPinField({
    super.key,
    required this.pinController,
    required this.validatorFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Pinput(
      controller: pinController,
      keyboardType: TextInputType.number,
      showCursor: true,
      readOnly: true,
      defaultPinTheme: PinTheme(
        textStyle: CustomTextStyles.mWhite716,
        decoration: BoxDecoration(
          color: CColors.whiteColor.withOpacity(
            0.2,
          ),
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        height: 65,
        width: 70,
      ),

      closeKeyboardWhenCompleted: true,
      errorBuilder: (
        validatorMessage,
        inputNumbers,
      ) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            10.ph,
            Text(
              validatorMessage!,
              style: CustomTextStyles.mPrimaryAccent716,
            ).alignWidget(
              alignment: Alignment.center,
            ),
          ],
        );
      },
      errorPinTheme: PinTheme(
        textStyle: CustomTextStyles.mWhite716,
        decoration: BoxDecoration(
          color: CColors.whiteColor.withOpacity(
            0.2,
          ),
          borderRadius: BorderRadius.circular(
            12,
          ),
          border: Border.all(
            color: CColors.primaryAccentColor,
          ),
        ),
        height: 65,
        width: 70,
      ),
      validator: validatorFunction,
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      hapticFeedbackType: HapticFeedbackType.mediumImpact,
    );
  }
}
