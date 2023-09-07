import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../home_page/view/home_page_screen.dart';
import '../view/confirm_new_pin_screen.dart';
import '../view/set_new_pin_screen.dart';

class ChangePinController extends GetxController {
  final currentPinKey = GlobalKey<FormState>();
  final newPinKey = GlobalKey<FormState>();
  final confirmNewPinKey = GlobalKey<FormState>();
  TextEditingController currentPinController = TextEditingController();
  TextEditingController newPinController = TextEditingController();
  TextEditingController confirmPinController = TextEditingController();

  validateCurrentPin() {
    if (currentPinKey.currentState!.validate()) {
      Get.to(
        () => const SetNewPinScreen(),
        transition: Transition.fadeIn,
      );
    }
  }

  validateNewPin() {
    if (newPinKey.currentState!.validate()) {
      Get.to(
        () => const ConfirmNewPinScreen(),
        transition: Transition.fadeIn,
      );
    }
  }

  validateNewConfirmPin() {
    if (confirmNewPinKey.currentState!.validate()) {
      Get.offAll(
        () => const HomePageScreen(),
        transition: Transition.fadeIn,
      );
    }
  }

  @override
  InternalFinalCallback<void> get onDelete {
    currentPinController.clear();
    newPinController.clear();
    confirmPinController.clear();
    return super.onDelete;
  }

  @override
  void onClose() {
    super.onClose();
    currentPinController.dispose();
    newPinController.dispose();
    confirmPinController.dispose();
  }
}
