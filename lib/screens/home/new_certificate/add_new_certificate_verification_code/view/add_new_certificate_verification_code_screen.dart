import 'package:exoid/screens/home/new_certificate/add_new_certificate_verification_code/controller/add_new_verification_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common_components/pin_component/pin_primary_component.dart';
import '../../../../../generated/assets.dart';

class AddNewCertificateVerificationCodeScreen extends StatelessWidget {
  const AddNewCertificateVerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final verificationController =
        Get.find<AddNewCertificateVerificationCodeController>();
    return Form(
      key: verificationController.verificationPinKey,
      child: PinPrimaryComponent(
        imageAsset: Assets.addNewCertificateAddNewVerificationImage,
        titleString: "We  have sent a verification\ncode to your mail address",
        needSmallTitle: true,
        buttonString: "Next",
        pinController: verificationController.verificationCodeController,
        validatorFunction: (val) {
          if (val!.isEmpty) {
            return "Pin cannot be Empty.";
          } else {
            return null;
          }
        },
        buttonOnPressedFunction: () {
          verificationController.validatePinKey();
        },
      ),
    );
  }
}
