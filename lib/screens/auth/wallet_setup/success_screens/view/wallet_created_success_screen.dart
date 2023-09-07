import 'package:exoid/utils/gaps/gaps.dart';
import 'package:exoid/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../../../generated/assets.dart';
import '../../../../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../../../home/home_page/view/home_page_screen.dart';

class WalletCreatedSuccessScreen extends StatelessWidget {
  const WalletCreatedSuccessScreen({super.key});

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
                  Spacer(
                    flex: context.isPortrait ? 3 : 1,
                  ),
                  SvgPicture.asset(
                    Assets.authImagesWalletSuccessImage,
                    height: 305,
                  ),
                  20.ph,
                  Spacer(
                    flex: context.isPortrait ? 3 : 1,
                  ),
                  const Text(
                    "Wallet created!",
                    style: CustomTextStyles.gWhite730,
                  ),
                  const Spacer(),
                  20.ph,
                  CustomElevatedButton(
                    buttonText: "Move On",
                    width: 200,
                    onPressedFunction: () {
                      Get.offAll(
                        () => const HomePageScreen(),
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
