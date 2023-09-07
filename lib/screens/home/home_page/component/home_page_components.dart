import 'package:exoid/utils/alignment/widget_alignment.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:exoid/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.dart';
import '../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../../../reusable_widgets/buttons/custom_outline_button.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../request/proof_request/view/proof_request_screen.dart';

class CertificateCardComponent extends StatelessWidget {
  final bool isVerified;
  final String certificateTitle, backgroundImageAssetString;
  final Color backGroundColor;
  final Function()? addNewFunction, onTapFunction;

  const CertificateCardComponent({
    super.key,
    required this.isVerified,
    required this.certificateTitle,
    required this.backgroundImageAssetString,
    required this.backGroundColor,
    this.addNewFunction,
    this.onTapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFunction,
      borderRadius: BorderRadius.circular(
        10,
      ),
      child: Container(
        height: 180,
        width: context.width * 1,
        decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                      ),
                      child: Text(
                        certificateTitle,
                        style: CustomTextStyles.gBlack736,
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    backgroundImageAssetString,
                  ),
                ],
              ),
            ),
            isVerified
                ? Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                      bottom: 20,
                    ),
                    child: SvgPicture.asset(
                      Assets.homepageImagesHomepageArrowImage,
                      width: 65,
                    ).alignWidget(
                      alignment: Alignment.bottomRight,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                      bottom: 20,
                    ),
                    child: AddNewOutlineButton(
                      buttonText: 'Add New',
                      onPressedFunction: addNewFunction,
                    ),
                  ).alignWidget(
                    alignment: Alignment.bottomRight,
                  ),
          ],
        ),
      ),
    );
  }
}

class AddNewOutlineButton extends StatelessWidget {
  final Function()? onPressedFunction;
  final String buttonText;

  const AddNewOutlineButton({
    super.key,
    required this.onPressedFunction,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressedFunction,
      style: ElevatedButton.styleFrom(
        side: const BorderSide(
          color: CColors.scaffoldBackground,
        ),
        elevation: 0.0,
        shape: const StadiumBorder(),
      ),
      icon: const Icon(
        Icons.add,
        color: CColors.scaffoldBackground,
      ),
      label: Text(
        buttonText,
        style: CustomTextStyles.mDark516,
      ),
    );
  }
}

class ThirdPartyPopUp extends StatelessWidget {
  const ThirdPartyPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 1,
      padding: const EdgeInsets.only(
        bottom: 30,
        left: 20,
        right: 20,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Proof requested by NewCarsharing",
              style: CustomTextStyles.gWhite724,
              textAlign: TextAlign.center,
            ),
            10.ph,
            SvgPicture.asset(
              Assets.homepageImagesProofRequestedImage,
            ),
            10.ph,
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
                    buttonText: "Next",
                    width: 200,
                    onPressedFunction: () {
                      Get.back();
                      Get.to(
                        () => const ProofRequestScreen(),
                        transition: Transition.fadeIn,
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
