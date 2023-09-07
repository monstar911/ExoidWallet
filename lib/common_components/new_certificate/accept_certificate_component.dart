import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../reusable_widgets/app_bar/custom_appbar.dart';
import '../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../utils/text_styles/text_styles.dart';

class AcceptCertificateComponent extends StatelessWidget {
  final String titleString, subTitle, imageAssetString, buttonString;
  final Function()? buttonPressFunction;
  final bool needSubTitle;

  const AcceptCertificateComponent({
    super.key,
    required this.titleString,
    this.subTitle = "",
    this.needSubTitle = true,
    required this.imageAssetString,
    required this.buttonString,
    required this.buttonPressFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  titleString,
                  style: needSubTitle
                      ? CustomTextStyles.gWhite730
                      : CustomTextStyles.gWhite724,
                  textAlign: TextAlign.center,
                ),
                20.ph,
                needSubTitle
                    ? Text(
                        subTitle,
                        style: CustomTextStyles.gWhite720,
                        textAlign: TextAlign.center,
                      )
                    : const SizedBox.shrink(),
                20.ph,
                const Spacer(),
                SvgPicture.asset(
                  imageAssetString,
                ),
                20.ph,
                const Spacer(
                  flex: 3,
                ),
                CustomElevatedButton(
                  buttonText: buttonString,
                  width: context.width * 0.8,
                  onPressedFunction: buttonPressFunction,
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
    );
  }
}
