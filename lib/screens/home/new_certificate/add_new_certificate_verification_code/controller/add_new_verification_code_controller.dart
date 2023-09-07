import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../accept_certificate/view/accept_certificate_screen.dart';

class AddNewCertificateVerificationCodeController extends GetxController {
  TextEditingController verificationCodeController = TextEditingController();
  final verificationPinKey = GlobalKey<FormState>();

  validatePinKey() {
    if (verificationPinKey.currentState!.validate()) {
      Get.to(
        () => const AcceptCertificateScreen(),
        transition: Transition.fadeIn,
      );
    }
  }

  @override
  InternalFinalCallback<void> get onDelete {
    verificationCodeController.clear();
    return super.onDelete;
  }

  @override
  void onClose() {
    super.onClose();
    verificationCodeController.dispose();
  }
}
