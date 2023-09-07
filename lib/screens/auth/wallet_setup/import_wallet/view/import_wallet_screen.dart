import 'package:exoid/reusable_widgets/app_bar/custom_appbar.dart';
import 'package:exoid/reusable_widgets/text_field/custom_recovery_phrase_text_field.dart';
import 'package:exoid/utils/alignment/widget_alignment.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:exoid/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../../../../utils/colors/app_colors.dart';
import '../controller/import_wallet_controller.dart';

class ImportWalletScreen extends StatelessWidget {
  const ImportWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final importWalletController = Get.find<ImportWalletController>();
    return Scaffold(
      appBar: CustomAppBar(
        titleText: "Enter your recovery phrase",
        needTitle: context.isLandscape,
      ),
      body: Form(
        key: importWalletController.recoveryFormKey,
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    context.isPortrait
                        ? Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              20.ph,
                              const Text(
                                "Enter your recovery phrase",
                                style: CustomTextStyles.gWhite724,
                              ),
                              40.ph,
                            ],
                          )
                        : const SizedBox.shrink(),
                    SizedBox(
                      height: 140,
                      child: Stack(
                        children: [
                          CustomRecoveryPhraseTextField(
                              focusNode: importWalletController.focusNode,
                              width: context.width * 1,
                              height: 150,
                              validatorFunction: (val) {
                                return importWalletController.phraseValidator(
                                  recoveryPhrase: val,
                                );
                              },
                              textEditingController: importWalletController
                                  .recoveryPhraseController,
                            ),
                          Visibility(
                            visible:
                                !importWalletController.focusNode.hasFocus &&
                                    importWalletController
                                        .recoveryPhraseController.text.isEmpty,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "Type or ",
                                  style: CustomTextStyles.mWhite516,
                                ),
                                Container(
                                  height: 32,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 5,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      12,
                                    ),
                                    color: CColors.darkBackground,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.file_copy_outlined,
                                        color: CColors.whiteColor,
                                        size: 20,
                                      ),
                                      5.pw,
                                      const Text(
                                        "Paste",
                                        style: CustomTextStyles.mWhite516,
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  " recovery phrase",
                                  style: CustomTextStyles.mWhite516,
                                ),
                              ],
                            ).alignWidget(
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Obx(() => importWalletController.showErrorWidget.value
                        ? Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              context.isPortrait ? 40.ph : 20.ph,
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.warning_amber_rounded,
                                    color: CColors.primaryAccentColor,
                                  ),
                                  5.pw,
                                  Text(
                                    importWalletController.errorMessage.value,
                                    style: CustomTextStyles.mPrimaryAccent716,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              )
                            ],
                          )
                        : const SizedBox.shrink()),
                    const Spacer(),
                    20.ph,
                    CustomElevatedButton(
                      buttonText: "Next",
                      width: 200,
                      onPressedFunction: () {
                        importWalletController.validateConfirmPin();
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
      ),
    );
  }
}
