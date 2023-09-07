import 'dart:developer';

import 'package:exoid/generated/assets.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:exoid/utils/text_styles/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../wallet_setup/wallet_landing_screen/view/wallet_setup_screen.dart';

class StartingPointScreen extends StatelessWidget {
  const StartingPointScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  Image.asset(
                    Assets.authImagesStaringPageLogo,
                    height: 225,
                  ),
                  const Spacer(),
                  20.ph,
                  const Text(
                    "Bring your Identity anywhere",
                    style: CustomTextStyles.gWhite724,
                    textAlign: TextAlign.center,
                  ),
                  20.ph,
                  const Spacer(),
                  CustomElevatedButton(
                    buttonText: "Get Started",
                    width: 200,
                    onPressedFunction: () {
                      Get.off(
                        () => const WalletSetupScreen(),
                        transition: Transition.fadeIn,
                      );
                    },
                  ),
                  20.ph,
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'By continuing, I agree to the ',
                          style: CustomTextStyles.mWhite514Spacing,
                        ),
                        TextSpan(
                          text: 'Terms of Service',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => log('Terms of Service'),
                          style: CustomTextStyles.mPrimaryAccent514Spacing,
                        ),
                        const TextSpan(
                          text: ' and consent to the ',
                          style: CustomTextStyles.mWhite514Spacing,
                        ),
                        TextSpan(
                          text: 'Privacy policy',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => log('Privacy Policy'),
                          style: CustomTextStyles.mPrimaryAccent514Spacing,
                        ),
                        const TextSpan(
                          text: '.',
                          style: CustomTextStyles.mWhite514Spacing,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ).paddingSymmetric(
                horizontal: 20,
                vertical: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
