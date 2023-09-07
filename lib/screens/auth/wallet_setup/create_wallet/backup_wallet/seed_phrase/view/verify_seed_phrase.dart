import 'package:exoid/reusable_widgets/app_bar/custom_appbar.dart';
import 'package:exoid/screens/auth/wallet_setup/success_screens/view/wallet_backup_completed_success_screen.dart';
import 'package:exoid/utils/alignment/widget_alignment.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:exoid/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../component/seed_phrase_components.dart';
import '../controller/seed_phrase_controller.dart';

class VerifySeedPhraseScreen extends StatelessWidget {
  final Function()? successNavigationFunction;

  const VerifySeedPhraseScreen({
    super.key,
    required this.successNavigationFunction,
  });

  @override
  Widget build(BuildContext context) {
    final verifySeedPhraseController = Get.find<SeedPhraseController>();
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  20.ph,
                  const Text(
                    "Verify recovery phrase",
                    style: CustomTextStyles.gWhite724,
                  ),
                  const Spacer(),
                  20.ph,
                  Obx(
                    () {
                      return Text(
                        "Select Word #${verifySeedPhraseController.numberForSelectionOne.value.toString()}",
                        style: CustomTextStyles.mWhite514,
                      );
                    },
                  ).alignWidget(
                    alignment: Alignment.centerLeft,
                  ),
                  5.ph,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Obx(
                          () {
                            return SeedPhraseOptionContainer(
                              selectedIndex: verifySeedPhraseController
                                  .selectedIndexOne.value,
                              itemIndex: 0,
                              onTapFunction: () {
                                verifySeedPhraseController.toggleFirstRow(
                                  index: 0,
                                );
                              },
                              text: verifySeedPhraseController
                                  .recoveryPhraseFirstRowValueOne
                                  .value
                                  .recoveryPhrase,
                            );
                          },
                        ),
                      ),
                      10.pw,
                      Expanded(
                        child: Obx(
                          () {
                            return SeedPhraseOptionContainer(
                              selectedIndex: verifySeedPhraseController
                                  .selectedIndexOne.value,
                              itemIndex: 1,
                              onTapFunction: () {
                                verifySeedPhraseController.toggleFirstRow(
                                  index: 1,
                                );
                              },
                              text: verifySeedPhraseController
                                  .recoveryPhraseFirstRowValueTwo
                                  .value
                                  .recoveryPhrase,
                            );
                          },
                        ),
                      ),
                      10.pw,
                      Expanded(
                        child: Obx(
                          () {
                            return SeedPhraseOptionContainer(
                              selectedIndex: verifySeedPhraseController
                                  .selectedIndexOne.value,
                              itemIndex: 2,
                              onTapFunction: () {
                                verifySeedPhraseController.toggleFirstRow(
                                  index: 2,
                                );
                              },
                              text: verifySeedPhraseController
                                  .recoveryPhraseFirstRowValueThree
                                  .value
                                  .recoveryPhrase,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  20.ph,
                  Obx(
                    () {
                      return Text(
                        "Select Word #${verifySeedPhraseController.numberForSelectionTwo.value.toString()}",
                        style: CustomTextStyles.mWhite514,
                      );
                    },
                  ).alignWidget(
                    alignment: Alignment.centerLeft,
                  ),
                  5.ph,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Obx(
                          () {
                            return SeedPhraseOptionContainer(
                              selectedIndex: verifySeedPhraseController
                                  .selectedIndexTwo.value,
                              itemIndex: 0,
                              onTapFunction: () {
                                verifySeedPhraseController.toggleSecondRow(
                                  index: 0,
                                );
                              },
                              text: verifySeedPhraseController
                                  .recoveryPhraseSecondRowValueOne
                                  .value
                                  .recoveryPhrase,
                            );
                          },
                        ),
                      ),
                      10.pw,
                      Expanded(
                        child: Obx(
                          () {
                            return SeedPhraseOptionContainer(
                              selectedIndex: verifySeedPhraseController
                                  .selectedIndexTwo.value,
                              itemIndex: 1,
                              onTapFunction: () {
                                verifySeedPhraseController.toggleSecondRow(
                                  index: 1,
                                );
                              },
                              text: verifySeedPhraseController
                                  .recoveryPhraseSecondRowValueTwo
                                  .value
                                  .recoveryPhrase,
                            );
                          },
                        ),
                      ),
                      10.pw,
                      Expanded(
                        child: Obx(
                          () {
                            return SeedPhraseOptionContainer(
                              selectedIndex: verifySeedPhraseController
                                  .selectedIndexTwo.value,
                              itemIndex: 2,
                              onTapFunction: () {
                                verifySeedPhraseController.toggleSecondRow(
                                  index: 2,
                                );
                              },
                              text: verifySeedPhraseController
                                  .recoveryPhraseSecondRowValueThree
                                  .value
                                  .recoveryPhrase,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  20.ph,
                  Obx(
                    () {
                      return Text(
                        "Select Word #${verifySeedPhraseController.numberForSelectionThree.value.toString()}",
                        style: CustomTextStyles.mWhite514,
                      );
                    },
                  ).alignWidget(
                    alignment: Alignment.centerLeft,
                  ),
                  5.ph,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Obx(
                          () {
                            return SeedPhraseOptionContainer(
                              selectedIndex: verifySeedPhraseController
                                  .selectedIndexThree.value,
                              itemIndex: 0,
                              onTapFunction: () {
                                verifySeedPhraseController.toggleThirdRow(
                                  index: 0,
                                );
                              },
                              text: verifySeedPhraseController
                                  .recoveryPhraseThirdRowValueOne
                                  .value
                                  .recoveryPhrase,
                            );
                          },
                        ),
                      ),
                      10.pw,
                      Expanded(
                        child: Obx(
                          () {
                            return SeedPhraseOptionContainer(
                              selectedIndex: verifySeedPhraseController
                                  .selectedIndexThree.value,
                              itemIndex: 1,
                              onTapFunction: () {
                                verifySeedPhraseController.toggleThirdRow(
                                  index: 1,
                                );
                              },
                              text: verifySeedPhraseController
                                  .recoveryPhraseThirdRowValueTwo
                                  .value
                                  .recoveryPhrase,
                            );
                          },
                        ),
                      ),
                      10.pw,
                      Expanded(
                        child: Obx(
                          () {
                            return SeedPhraseOptionContainer(
                              selectedIndex: verifySeedPhraseController
                                  .selectedIndexThree.value,
                              itemIndex: 2,
                              onTapFunction: () {
                                verifySeedPhraseController.toggleThirdRow(
                                  index: 2,
                                );
                              },
                              text: verifySeedPhraseController
                                  .recoveryPhraseThirdRowValueThree
                                  .value
                                  .recoveryPhrase,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  CustomElevatedButton(
                    buttonText: "Next",
                    width: 200,
                    onPressedFunction: () {
                      Get.offAll(
                        () => WalletBackUpCreatedSuccessScreen(
                          successNavigationFunction: successNavigationFunction,
                        ),
                        transition: Transition.fadeIn,
                      );
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
