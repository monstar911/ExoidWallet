import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../generated/assets.dart';
import '../../../../../reusable_widgets/app_bar/custom_appbar.dart';
import '../../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../../../../reusable_widgets/buttons/custom_outline_button.dart';
import '../../../../../utils/text_styles/text_styles.dart';
import '../../generating_proof/view/generating_proof_screen.dart';

class ProofGeneratingLandingScreen extends StatelessWidget {
  const ProofGeneratingLandingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(
        titleText: "Cryptographic Proof",
        needTitle: context.isPortrait ? false : true,
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  context.isPortrait
                      ? const Text(
                    "Cryptographic Proof",
                    style: CustomTextStyles.gWhite724,
                    textAlign: TextAlign.center,
                  )
                      : const SizedBox.shrink(),

                  const Spacer(),
                  20.ph,
                  SvgPicture.asset(
                    Assets.generatingProofCryptographicImage,
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  const Text(
                    "No private data is revealed!",
                    style: CustomTextStyles.gWhite724,
                    textAlign: TextAlign.center,
                  ),
                  20.ph,
                  const Text(
                    "Only a cryptographic proof of possessing the required information is disclosed.",
                    style: CustomTextStyles.mWhite720,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  20.ph,
                  Row(
                    children: [
                      Expanded(
                        child: CustomOutlinedButton(
                          buttonText: "Cancel",
                          width: 200,
                          onPressedFunction: () {
                            Get.back();
                          },
                        ),
                      ),
                      30.pw,
                      Expanded(
                        child: CustomElevatedButton(
                          buttonText: "Generate proof",
                          width: 200,
                          onPressedFunction: () {
                            Get.to(
                              () => const GeneratingProofScreen(),
                              transition: Transition.fadeIn,
                            );
                          },
                        ),
                      ),
                    ],
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
      ),
    );
  }
}
