import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../add_new_certificate_verification_code/view/add_new_certificate_verification_code_screen.dart';

class VerifyEmailController extends GetxController {
  final emailFormKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  final validatorMessage = "".obs;
  final showValidatorMessage = false.obs;

  validateEmailFormKey() {
    if (emailFormKey.currentState!.validate()) {
      Get.to(
        () => const AddNewCertificateVerificationCodeScreen(),
        transition: Transition.fadeIn,
      );
    }
  }

  emailValidationFunction({required String? emailString}) {
    if (emailString!.isEmpty) {
      validatorMessage.value = "Email cannot be Empty.";
      showValidatorMessage.value = true;
      return "Email cannot be Empty.";
    } else if (!(GetUtils.isEmail(emailString))) {
      validatorMessage.value = "Enter Valid Email.";
      showValidatorMessage.value = true;
      return "Enter Valid Email.";
    } else {
      validatorMessage.value = "";
      showValidatorMessage.value = false;
      return null;
    }
  }

  @override
  InternalFinalCallback<void> get onDelete {
    emailController.clear();
    return super.onDelete;
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
