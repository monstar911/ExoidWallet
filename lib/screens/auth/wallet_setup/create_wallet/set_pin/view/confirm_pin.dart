import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../common_components/pin_component/pin_primary_component.dart';
import '../controller/pin_controller.dart';

class ConfirmPinScreen extends StatelessWidget {
  const ConfirmPinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final confirmPinController = Get.find<PinController>();
    return Form(
      key: confirmPinController.confirmPinKey,
      child: PinPrimaryComponent(
        titleString: "Confirm Pin",
        buttonString: "Confirm Pin",
        pinController: confirmPinController.confirmPinController,
        validatorFunction: (val) {
          if (val!.isEmpty) {
            return "Pin cannot be Empty.";
          } else if (val != confirmPinController.enterPinController.text) {
            return "Invalid code, try again";
          } else {
            return null;
          }
        },
        buttonOnPressedFunction: () {
          confirmPinController.validateConfirmPin(
            context: context,
          );
        },
      ),
    );
  }
}
