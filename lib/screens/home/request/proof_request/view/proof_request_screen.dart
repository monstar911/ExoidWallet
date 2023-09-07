import 'package:exoid/reusable_widgets/app_bar/custom_appbar.dart';
import 'package:exoid/screens/home/proof_generation/proof_generation_landing/view/proof_generating_landing_screen.dart';
import 'package:exoid/screens/home/request/proof_request/controller/proof_request_controller.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../generated/assets.dart';
import '../../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../../../../reusable_widgets/text_field/custom_request_text_field.dart';
import '../../../../../utils/text_styles/text_styles.dart';

class ProofRequestScreen extends StatelessWidget {
  const ProofRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final proofScreenController = Get.find<ProofRequestController>();
    return Scaffold(
      appBar: CustomAppBar(
        titleText: "Proof Request",
        needTitle: context.isPortrait ? false : true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                context.isPortrait
                    ? const Text(
                        "Proof Request",
                        style: CustomTextStyles.gWhite724,
                      )
                    : const SizedBox.shrink(),
                Spacer(
                  flex: context.isPortrait ? 2 : 1,
                ),
                SvgPicture.asset(
                  Assets.proofRequestedImagesProofRequestedImage,
                  height: 80,
                ),
                20.ph,
                const Text(
                  " NewCarsharing requests a valid proof of those claims to access the service:",
                  style: CustomTextStyles.mWhite616,
                  textAlign: TextAlign.center,
                ),
                40.ph,
                CustomRequestTextField(
                  height: 80,
                  width: context.width * 1,
                  validatorFunction: (val) {
                    return null;
                  },
                  textEditingController:
                      proofScreenController.claimOneController,
                  hintText: "You are an italian citizen",
                ),
                10.ph,
                CustomRequestTextField(
                  height: 80,
                  width: context.width * 1,
                  validatorFunction: (val) {
                    return null;
                  },
                  textEditingController:
                      proofScreenController.claimTwoController,
                  hintText: "You have a valid driving licence",
                ),
                const Spacer(),
                20.ph,
                CustomElevatedButton(
                  buttonText: "Next",
                  width: 200,
                  onPressedFunction: () {
                    Get.to(
                      () => const ProofGeneratingLandingScreen(),
                      transition: Transition.fadeIn,
                    );
                  },
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
