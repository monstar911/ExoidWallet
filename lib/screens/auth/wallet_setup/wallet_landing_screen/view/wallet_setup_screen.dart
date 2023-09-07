
import 'package:exoid/generated/assets.dart';
import 'package:exoid/reusable_widgets/buttons/custom_outline_button.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:exoid/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../create_wallet/set_pin/view/set_pin.dart';
import '../../import_wallet/view/import_wallet_screen.dart';

class WalletSetupScreen extends StatelessWidget {
  const WalletSetupScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  20.ph,
                  const Spacer(),
                  Image.asset(
                    Assets.authImagesWalletSetupLogo,
                    height: 50,
                    width: context.width * 1,
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  SvgPicture.asset(
                    Assets.authImagesWalletSetupImage,
                    height: 260,
                    width: context.width * 1,
                  ),
                  const Spacer(),
                  20.ph,
                  const Text(
                    "Let’s build your\nidentity wallet",
                    style: CustomTextStyles.gWhite724,
                    textAlign: TextAlign.center,
                  ),
                  20.ph,
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: CustomOutlinedButton(
                          buttonText: "Import Wallet",
                          width: 200,
                          onPressedFunction: () {
                            Get.to(
                              () => const ImportWalletScreen(),
                              transition: Transition.fadeIn,
                            );
                          },
                        ),
                      ),
                      30.pw,
                      Expanded(
                        child: CustomElevatedButton(
                          buttonText: "Create Wallet",
                          width: 200,
                          onPressedFunction: () {
                            Get.to(
                              () => const SetPinScreen(),
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


