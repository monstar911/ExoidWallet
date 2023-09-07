import 'package:exoid/reusable_widgets/app_bar/custom_appbar.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../../../generated/assets.dart';
import '../../../../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../../../../../../reusable_widgets/buttons/custom_outline_button.dart';
import '../../../../../../../utils/text_styles/text_styles.dart';
import '../../../backup_wallet/backup_landing_screen/view/backup_wallet_screen.dart';

class EnableFaceBiometricScreen extends StatelessWidget {
  const EnableFaceBiometricScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                    "Use face ID instead\nof Pin to log in",
                    style: CustomTextStyles.gWhite724,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        Assets.authImagesFaceIdImage,
                        height: 120,
                      ),
                      20.ph,
                      const Text(
                        "Face ID",
                        style: CustomTextStyles.gWhite724,
                        textAlign: TextAlign.center,
                      ),
                    ],
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
                                  () => const BackUpWallet(),
                              transition: Transition.fadeIn,
                            );
                          },
                        ),
                      ),
                      30.pw,
                      Expanded(
                        child: CustomElevatedButton(
                          buttonText: "Enable face ID",
                          width: 200,
                          onPressedFunction: () {
                            Get.to(
                                  () => const BackUpWallet(),
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
