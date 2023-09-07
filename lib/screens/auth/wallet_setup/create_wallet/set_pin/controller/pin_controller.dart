import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../enable_biometrics/face_biometric/view/enable_face_biometric_screen.dart';
import '../../enable_biometrics/finger_biometric/finger_biometric_screen.dart';
import '../view/confirm_pin.dart';

class PinController extends GetxController {
  final enterPinKey = GlobalKey<FormState>();
  final confirmPinKey = GlobalKey<FormState>();
  TextEditingController enterPinController = TextEditingController();
  TextEditingController confirmPinController = TextEditingController();

  validateSetPin() {
    if (enterPinKey.currentState!.validate()) {
      Get.to(
        () => const ConfirmPinScreen(),
        transition: Transition.fadeIn,
      );
    }
  }

  validateConfirmPin({required BuildContext context}) {
    bool isIos = Theme.of(context).platform == TargetPlatform.iOS;
    if (isIos) {
      if (confirmPinKey.currentState!.validate()) {
        Get.to(
          () => const EnableFaceBiometricScreen(),
          transition: Transition.fadeIn,
        );
      }
    }
    else{
      Get.to(
            () => const EnableFingerBiometricScreen(),
        transition: Transition.fadeIn,
      );
    }
  }

  @override
  InternalFinalCallback<void> get onDelete {
    enterPinController.clear();
    confirmPinController.clear();
    return super.onDelete;
  }

  @override
  void onClose() {
    super.onClose();
    enterPinController.dispose();
    confirmPinController.dispose();
  }
}
