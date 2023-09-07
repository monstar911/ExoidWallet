import 'package:exoid/reusable_widgets/app_bar/custom_appbar.dart';
import 'package:exoid/screens/auth/wallet_setup/create_wallet/backup_wallet/seed_phrase/view/verify_seed_phrase.dart';
import 'package:exoid/utils/constants/constant_lists.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:exoid/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../../../generated/assets.dart';
import '../../../../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../../../../../../utils/colors/app_colors.dart';

class SeedPhraseRevealScreen extends StatelessWidget {
  final Function()? successNavigationFunction;

  const SeedPhraseRevealScreen({
    super.key,
    required this.successNavigationFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        needTitle: context.isLandscape,
        titleText: "Your recovery phrase",
      ),
      body: SafeArea(
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
                              "Your recovery phrase",
                              style: CustomTextStyles.gWhite724,
                            ),
                            20.ph,
                          ],
                        )
                      : const SizedBox.shrink(),
                  const Text(
                    "Write down or copy these words in the right order and save them somewhere safe.",
                    style: CustomTextStyles.mWhiteLetterSpacing516,
                    textAlign: TextAlign.center,
                  ),
                  40.ph,
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                      color: CColors.primaryAccentColor.withOpacity(
                        0.31,
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          Assets.seedPhraseRevealImagesWarningIcon,
                          height: 24,
                          width: 24,
                        ),
                        10.pw,
                        const Flexible(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "Never share recovery phrase with anyone!",
                              style: CustomTextStyles.mWhite514,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  40.ph,
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                      color: CColors.primaryButtonColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                for (int i = 0;
                                    i <
                                        (ConstantLists
                                                    .recoveryPhraseList.length /
                                                2)
                                            .floor();
                                    i++) ...[
                                  Text(
                                    "${ConstantLists.recoveryPhraseList[i].uniqueNumber} ",
                                    style: CustomTextStyles.qPrimary520,
                                  ),
                                  10.ph,
                                ]
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                for (int i = 0;
                                    i <
                                        (ConstantLists
                                                    .recoveryPhraseList.length /
                                                2)
                                            .floor();
                                    i++) ...[
                                  Text(
                                    ConstantLists
                                        .recoveryPhraseList[i].recoveryPhrase,
                                    style: CustomTextStyles.mWhite520,
                                  ),
                                  10.ph,
                                ]
                              ],
                            ),
                          ],
                        ),
                        context.isPortrait ? 30.pw : 10.pw,
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                for (int i = (ConstantLists
                                                .recoveryPhraseList.length /
                                            2)
                                        .floor();
                                    i < ConstantLists.recoveryPhraseList.length;
                                    i++) ...[
                                  Text(
                                    "${ConstantLists.recoveryPhraseList[i].uniqueNumber} ",
                                    style: CustomTextStyles.qPrimary520,
                                  ),
                                  10.ph,
                                ]
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                for (int i = (ConstantLists
                                                .recoveryPhraseList.length /
                                            2)
                                        .floor();
                                    i < ConstantLists.recoveryPhraseList.length;
                                    i++) ...[
                                  Text(
                                    ConstantLists
                                        .recoveryPhraseList[i].recoveryPhrase,
                                    style: CustomTextStyles.mWhite520,
                                  ),
                                  10.ph,
                                ]
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  20.ph,
                  InkWell(
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                    onTap: () {},
                    child: Ink(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                          color: CColors.darkBackground),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            Assets.seedPhraseRevealImagesCopyText,
                            height: 18,
                            width: 16,
                          ),
                          10.pw,
                          const Text(
                            "Copy",
                            style: CustomTextStyles.mWhite516,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  20.ph,
                  CustomElevatedButton(
                    buttonText: "Next",
                    width: 200,
                    onPressedFunction: () {
                      Get.to(
                        () => VerifySeedPhraseScreen(
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
