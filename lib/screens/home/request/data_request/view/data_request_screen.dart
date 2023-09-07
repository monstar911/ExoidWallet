import 'package:exoid/reusable_widgets/app_bar/custom_appbar.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../generated/assets.dart';
import '../../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../../../../reusable_widgets/text_field/custom_request_text_field.dart';
import '../../../../../utils/text_styles/text_styles.dart';
import '../../../confirm_with_pin/confirm_with_pin_and_face_id/view/confirm_with_pin_face_id_screen.dart';
import '../../../confirm_with_pin/confirm_with_pin_and_finger_id/view/confirm_with_pin_finger_id_screen.dart';
import '../controller/data_request_controller.dart';

class DataRequestScreen extends StatelessWidget {
  const DataRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dataScreenController = Get.find<DataRequestController>();
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
                        "Data Request",
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
                  "NewSurveys requests the following data to access the survey:",
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
                  textEditingController: dataScreenController.dataOneController,
                  hintText: "Your Name",
                ),
                10.ph,
                CustomRequestTextField(
                  height: 80,
                  width: context.width * 1,
                  validatorFunction: (val) {
                    return null;
                  },
                  textEditingController: dataScreenController.dataTwoController,
                  hintText: "Your Country",
                ),
                const Spacer(),
                20.ph,
                CustomElevatedButton(
                  buttonText: "Next",
                  width: 200,
                  onPressedFunction: () {
                    bool isIos =
                        Theme.of(context).platform == TargetPlatform.iOS;
                    if (isIos) {
                      Get.to(
                        () => const ConfirmWithPinFaceIdScreen(
                          successTitle: "Data shared!",
                        ),
                        transition: Transition.fadeIn,
                      );
                    } else {
                      Get.to(
                        () => const ConfirmWithPinFingerIdScreen(
                          successTitle: "Data shared!",
                        ),
                        transition: Transition.fadeIn,
                      );
                    }
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
