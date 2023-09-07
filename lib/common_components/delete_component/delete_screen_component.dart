import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../generated/assets.dart';
import '../../reusable_widgets/app_bar/custom_appbar.dart';
import '../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../reusable_widgets/buttons/custom_outline_button.dart';
import '../../utils/text_styles/text_styles.dart';

class DeleteAccountComponent extends StatelessWidget {
  final String titleText, descriptionText;
  final Function()? deleteFunction;

  const DeleteAccountComponent({
    super.key,
    required this.titleText,
    required this.descriptionText,
    required this.deleteFunction,
  });

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
                  const Spacer(),
                  Text(
                    titleText,
                    style: CustomTextStyles.gWhite730,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Text(
                    descriptionText,
                    style: CustomTextStyles.gWhite724,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  20.ph,
                  SvgPicture.asset(
                    Assets.settingsImagesDeleteWalletImage,
                    height: 260,
                    width: context.width * 1,
                  ),
                  20.ph,
                  const Spacer(
                    flex: 2,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomOutlinedButton(
                          buttonText: "Yes Delete It",
                          width: 200,
                          onPressedFunction: deleteFunction,
                        ),
                      ),
                      30.pw,
                      Expanded(
                        child: CustomElevatedButton(
                          buttonText: "Cancel",
                          width: 200,
                          onPressedFunction: () {
                            Get.back();
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
