import 'package:exoid/screens/home/proof_generation/generating_proof/controller/generating_proof_controller.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../generated/assets.dart';
import '../../../../../reusable_widgets/app_bar/custom_appbar.dart';
import '../../../../../utils/colors/app_colors.dart';
import '../../../../../utils/text_styles/text_styles.dart';

class GeneratingProofScreen extends StatelessWidget {
  const GeneratingProofScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final generatingProofController = Get.find<GeneratingProofController>();
    generatingProofController.checkOperatingSystem(context: context);
    return Scaffold(
      appBar: const CustomAppBar(),
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
                  SvgPicture.asset(
                    Assets.generatingProofGenertaingProofImage,
                  ),
                  10.ph,
                  const Spacer(),
                  CircularProgressIndicator(
                    color: CColors.primaryColor,
                    strokeWidth: 7,
                    backgroundColor: CColors.whiteColor.withOpacity(
                      0.2,
                    ),
                  ),
                  const Spacer(),
                  10.ph,
                  const Text(
                    "Generating proof",
                    style: CustomTextStyles.gWhite730,
                    textAlign: TextAlign.center,
                  ),
                  10.ph,
                  const Text(
                    "It may take few seconds",
                    style: CustomTextStyles.mWhite616,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(
                    flex: 2,
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
