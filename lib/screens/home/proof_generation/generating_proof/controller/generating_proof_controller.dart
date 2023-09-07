import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../confirm_with_pin/confirm_with_pin_and_face_id/view/confirm_with_pin_face_id_screen.dart';
import '../../../confirm_with_pin/confirm_with_pin_and_finger_id/view/confirm_with_pin_finger_id_screen.dart';

class GeneratingProofController extends GetxController {
  checkOperatingSystem({required BuildContext context}) {
    bool isIos = Theme.of(context).platform == TargetPlatform.iOS;
    Future.delayed(const Duration(seconds: 3), () {
      if (isIos) {
        Get.to(
          () => const ConfirmWithPinFaceIdScreen(
            successTitle: "Proof shared!",
          ),
          transition: Transition.fadeIn,
        );
      } else {
        Get.to(
          () => const ConfirmWithPinFingerIdScreen(
            successTitle: "Proof shared!",
          ),
          transition: Transition.fadeIn,
        );
      }
    });
  }
}
