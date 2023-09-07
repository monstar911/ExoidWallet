import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared_success/view/shared_success_screen.dart';


class ConfirmWithPinFingerIdController extends GetxController {
  final pinKey = GlobalKey<FormState>();
  TextEditingController pinController = TextEditingController();

  validatePin({
    required String successTitle,
  }) {
    if (pinKey.currentState!.validate()) {
      Get.to(
            () => SharedSuccessScreen(
          successTitle: successTitle,
        ),
        transition: Transition.fadeIn,
      );
    }
  }

  @override
  InternalFinalCallback<void> get onDelete {
    pinController.clear();
    return super.onDelete;
  }

  @override
  void onClose() {
    super.onClose();
    pinController.dispose();
  }
}