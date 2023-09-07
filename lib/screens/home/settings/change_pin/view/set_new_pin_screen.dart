import 'package:exoid/screens/home/settings/change_pin/controller/change_pin_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common_components/pin_component/pin_primary_component.dart';

class SetNewPinScreen extends StatelessWidget {
  const SetNewPinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final setNewPinController = Get.find<ChangePinController>();
    return Form(
      key: setNewPinController.newPinKey,
      child: PinPrimaryComponent(
        titleString: "Set New Pin",
        buttonString: "Set Pin",
        pinController: setNewPinController.newPinController,
        validatorFunction: (val) {
          if (val!.isEmpty) {
            return "Pin cannot be Empty.";
          } else {
            return null;
          }
        },
        buttonOnPressedFunction: () {
          setNewPinController.validateNewPin();
        },
      ),
    );
  }
}
