import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../../../generated/assets.dart';
import '../../../../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../../../../../../utils/text_styles/text_styles.dart';

class WalletBackUpCreatedSuccessScreen extends StatelessWidget {
  final Function()? successNavigationFunction;

  const WalletBackUpCreatedSuccessScreen({
    super.key,
    required this.successNavigationFunction,
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
                    "Backup completed!!",
                    style: CustomTextStyles.gWhite724,
                  ),
                  const Spacer(),
                  20.ph,
                  CustomElevatedButton(
                    buttonText: "Next",
                    width: 200,
                    onPressedFunction: successNavigationFunction,
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
