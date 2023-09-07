import 'package:exoid/reusable_widgets/app_bar/custom_appbar.dart';
import 'package:exoid/screens/home/home_page/view/home_page_screen.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.dart';
import '../../../../reusable_widgets/buttons/custom_elevated_button.dart';
import '../../../../utils/text_styles/text_styles.dart';

class SharedSuccessScreen extends StatelessWidget {
  final String successTitle;

  const SharedSuccessScreen({
    super.key,
    required this.successTitle,
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
                const Spacer(),
                SvgPicture.asset(
                  Assets.authImagesWalletSuccessImage,
                  height: 305,
                ),
                20.ph,
                const Spacer(),
                Text(
                  successTitle,
                  style: CustomTextStyles.gWhite730,
                ),
                10.ph,
                const Text(
                  "You can now access the service!",
                  style: CustomTextStyles.mWhite616,
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                20.ph,
                CustomElevatedButton(
                  buttonText: "Home",
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
    );
  }
}
