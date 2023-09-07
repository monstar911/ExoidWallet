import 'package:exoid/screens/home/settings/change_pin/controller/change_pin_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common_components/pin_component/pin_primary_component.dart';

class EnterCurrentPinScreen extends StatelessWidget {
  const EnterCurrentPinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentPinController = Get.find<ChangePinController>();
    return Form(
      key: currentPinController.currentPinKey,
      child: PinPrimaryComponent(
        titleString: "Current Pin",
        buttonString: "Confirm Pin",
        pinController: currentPinController.currentPinController,
        validatorFunction: (val) {
          if (val!.isEmpty) {
            return "Pin cannot be Empty.";
          } else {
            return null;
          }
        },
        buttonOnPressedFunction: () {
          currentPinController.validateCurrentPin();
        },
      ),
    );
  }
}
