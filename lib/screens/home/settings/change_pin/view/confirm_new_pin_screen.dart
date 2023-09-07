import 'package:exoid/screens/home/settings/change_pin/controller/change_pin_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common_components/pin_component/pin_primary_component.dart';

class ConfirmNewPinScreen extends StatelessWidget {
  const ConfirmNewPinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final confirmNewPinController = Get.find<ChangePinController>();
    return Form(
      key: confirmNewPinController.confirmNewPinKey,
      child: PinPrimaryComponent(
        titleString: "Confirm Pin",
        buttonString: "Confirm Pin",
        pinController: confirmNewPinController.confirmPinController,
        validatorFunction: (val) {
          if (val!.isEmpty) {
            return "Pin cannot be Empty.";
          } else if (val != confirmNewPinController.newPinController.text) {
            return "Invalid code, try again";
          } else {
            return null;
          }
        },
        buttonOnPressedFunction: () {
          confirmNewPinController.validateNewConfirmPin();
        },
      ),
    );
  }
}
