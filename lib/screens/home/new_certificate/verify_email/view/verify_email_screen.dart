import 'package:exoid/screens/home/new_certificate/verify_email/controller/verifiy_email_controller.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../generated/assets.dart';
import '../../../../../reusable_widgets/app_bar/custom_appbar.dart';
import '../../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../../../../reusable_widgets/text_field/simple_text_field.dart';
import '../../../../../utils/text_styles/text_styles.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final verifyEmailController = Get.find<VerifyEmailController>();
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Form(
        key: verifyEmailController.emailFormKey,
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    Assets.addNewCertificateAddNewVerificationImage,
                    height: 120,
                  ),
                  40.ph,
                  const Text(
                    "Certify your Email Address",
                    style: CustomTextStyles.gWhite720,
                    textAlign: TextAlign.center,
                  ),
                  40.ph,
                  SimpleTextField(
                    validatorFunction: (val) {
                      return verifyEmailController.emailValidationFunction(
                          emailString: val!);
                    },
                    textEditingController:
                        verifyEmailController.emailController,
                    width: context.width * 0.8,
                    hintText: "Email",
                  ),
                  Obx(() {
                    return Visibility(
                      visible: verifyEmailController.showValidatorMessage.value,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          10.ph,
                          Text(
                            verifyEmailController.validatorMessage.value,
                            style: CustomTextStyles.mPrimaryAccent716,
                          ),
                        ],
                      ),
                    );
                  }),
                  const Spacer(),
                  10.ph,
                  CustomElevatedButton(
                    buttonText: "Next",
                    width: 200,
                    onPressedFunction: () {
                      verifyEmailController.validateEmailFormKey();
                    },
                  ),
                  20.ph,
                ],
              ).paddingSymmetric(
                horizontal: 20,
                vertical: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
