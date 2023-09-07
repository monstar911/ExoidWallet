import 'package:exoid/common_components/pin_component/pin_primary_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/pin_controller.dart';

class SetPinScreen extends StatelessWidget {
  const SetPinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final setPinController = Get.find<PinController>();
    return Form(
      key: setPinController.enterPinKey,
      child: PinPrimaryComponent(
        titleString: "Set Pin",
        buttonString: "Set PIN",
        pinController: setPinController.enterPinController,
        validatorFunction: (val) {
          if (val!.isEmpty) {
            return "Pin cannot be Empty.";
          } else {
            return null;
          }
        },
        buttonOnPressedFunction: () {
          setPinController.validateSetPin();
        },
      ),
    );
  }
}
