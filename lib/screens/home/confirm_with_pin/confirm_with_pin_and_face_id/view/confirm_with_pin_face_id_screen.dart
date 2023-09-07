import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common_components/pin_component/pin_primary_component.dart';
import '../../../../../generated/assets.dart';
import '../controller/confirm_with_pin_face_id_controller.dart';

class ConfirmWithPinFaceIdScreen extends StatelessWidget {
  final String successTitle;

  const ConfirmWithPinFaceIdScreen({
    super.key,
    required this.successTitle,
  });

  @override
  Widget build(BuildContext context) {
    final confirmWithPinFaceIdController =
        Get.find<ConfirmWithPinFaceIdController>();
    return Form(
      key: confirmWithPinFaceIdController.pinKey,
      child: PinPrimaryComponent(
        titleString: "Confirm via\nPin or face ID",
        imageAsset: Assets.authImagesFaceIdImage,
        imageHeight: 120,
        buttonString: "Next",
        buttonOnPressedFunction: () {
          confirmWithPinFaceIdController.validatePin(
            successTitle: successTitle,
          );
        },
        pinController: confirmWithPinFaceIdController.pinController,
        validatorFunction: (val) {
          if (val!.isEmpty) {
            return "Pin cannot be Empty.";
          } else {
            return null;
          }
        },
      ),
    );
  }
}
