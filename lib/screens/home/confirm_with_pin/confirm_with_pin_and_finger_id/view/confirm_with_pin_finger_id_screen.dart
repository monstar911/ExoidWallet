import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common_components/pin_component/pin_primary_component.dart';
import '../../../../../generated/assets.dart';
import '../controller/confirm_with_pin_finger_id_controller.dart';

class ConfirmWithPinFingerIdScreen extends StatelessWidget {
  final String successTitle;

  const ConfirmWithPinFingerIdScreen({
    super.key,
    required this.successTitle,
  });

  @override
  Widget build(BuildContext context) {
    final confirmWithPinFingerIdController =
    Get.find<ConfirmWithPinFingerIdController>();
    return Form(
      key: confirmWithPinFingerIdController.pinKey,
      child: PinPrimaryComponent(
        titleString: "Confirm via\nPin or Biometrics",
        imageAsset: Assets.authImagesFingerIdBiometric,
        imageHeight: 100,
        buttonString: "Next",
        buttonOnPressedFunction: () {
          confirmWithPinFingerIdController.validatePin(
            successTitle: successTitle,
          );
        },
        pinController: confirmWithPinFingerIdController.pinController,
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