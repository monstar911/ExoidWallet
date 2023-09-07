import 'package:exoid/reusable_widgets/app_bar/custom_appbar.dart';
import 'package:exoid/screens/auth/wallet_setup/create_wallet/backup_wallet/backup_landing_screen/controller/backup_wallet_controller.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../../../generated/assets.dart';
import '../../../../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../../../../../../reusable_widgets/buttons/custom_outline_button.dart';
import '../../../../../../../utils/colors/app_colors.dart';
import '../../../../../../../utils/text_styles/text_styles.dart';
import '../../../../success_screens/view/wallet_created_success_screen.dart';
import '../../seed_phrase/view/seed_phrase_reveal.dart';

class BackUpWallet extends StatelessWidget {
  const BackUpWallet({super.key});

  @override
  Widget build(BuildContext context) {
    final backupController = Get.find<BackupWalletController>();
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
                    "Backup your wallet",
                    style: CustomTextStyles.gWhite724,
                    textAlign: TextAlign.center,
                  ),
                  10.ph,
                  const Text(
                    "Your backup is the only way\nto recover your wallet",
                    style: CustomTextStyles.mWhite516,
                    textAlign: TextAlign.center,
                  ),
                  30.ph,
                  SvgPicture.asset(
                    Assets.authImagesBackupImage,
                    height: 300,
                  ),
                  20.ph,
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    height: 80,
                    width: context.width * 1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      color: CColors.primaryButtonColor,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          Assets.authImagesBackupTileIcon,
                          height: 48,
                          width: 48,
                        ),
                        10.pw,
                        const Expanded(
                          child: Text(
                            "Enable backup on my cloud service",
                            style: CustomTextStyles.mWhite518,
                          ),
                        ),
                        10.pw,
                        Obx(() {
                          return CupertinoSwitch(
                            value: backupController.needBackUp.value,
                            onChanged: (val) {
                              backupController.toggleNeedBackUp(value: val);
                            },
                            thumbColor: Colors.white,
                            activeColor: CColors.primaryColor,
                            trackColor: CColors.scaffoldBackground,
                          );
                        }),
                      ],
                    ),
                  ),
                  20.ph,
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: CustomOutlinedButton(
                          buttonText: "Maybe later",
                          width: 200,
                          onPressedFunction: () {
                            Get.to(
                              () => const WalletCreatedSuccessScreen(),
                              transition: Transition.fadeIn,
                            );
                          },
                        ),
                      ),
                      30.pw,
                      Expanded(
                        child: CustomElevatedButton(
                          buttonText: "Back Up",
                          width: 200,
                          onPressedFunction: () {
                            Get.to(
                              () => SeedPhraseRevealScreen(
                                successNavigationFunction: () {
                                  Get.to(
                                    () => const WalletCreatedSuccessScreen(),
                                    transition: Transition.fadeIn,
                                  );
                                },
                              ),
                              transition: Transition.fadeIn,
                            );
                          },
                        ),
                      ),
                    ],
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
