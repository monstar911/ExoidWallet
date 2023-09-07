import 'package:exoid/screens/home/home_page/view/home_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImportWalletController extends GetxController {
  FocusNode focusNode = FocusNode();
  var recoveryFormKey = GlobalKey<FormState>();
  TextEditingController recoveryPhraseController = TextEditingController();
  String testRecoveryPhrase = "This is Test Recovery Phrase";
  final errorMessage = "".obs;
  final showErrorWidget = false.obs;

  validateConfirmPin() {
    if (recoveryFormKey.currentState!.validate()) {
      Get.offAll(
        () => const HomePageScreen(),
        transition: Transition.fadeIn,
      );
    }
  }

  String? phraseValidator({required String? recoveryPhrase}) {
    if (recoveryPhrase!.isEmpty) {
      showErrorWidget.value = true;
      errorMessage.value = "Recovery Phrase cannot be Empty";
      return "";
    } else if (recoveryPhrase.trim() != testRecoveryPhrase.toLowerCase()) {
      showErrorWidget.value = true;
      errorMessage.value = "Invalid Phrase";
      return "";
    } else {
      showErrorWidget.value = false;
      errorMessage.value = "";
      return null;
    }
  }

  @override
  InternalFinalCallback<void> get onDelete {
    recoveryPhraseController.clear();
    return super.onDelete;
  }

  @override
  void onClose() {
    super.onClose();
    recoveryPhraseController.dispose();
  }
}
