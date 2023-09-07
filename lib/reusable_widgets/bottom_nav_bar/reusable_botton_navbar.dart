import 'package:exoid/screens/home/home_page/view/home_page_screen.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:exoid/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../generated/assets.dart';
import '../../screens/home/new_certificate/add_new_certificate_landing_screen/view/add_new_certificate_screen.dart';
import '../../utils/colors/app_colors.dart';

class CustomBottomAppBar extends StatelessWidget {
  final int selectedIndex;

  const CustomBottomAppBar({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: CColors.whiteColor.withOpacity(
        0.05,
      ),
      elevation: 0.0,
      child: Row(
        children: [
          context.isPortrait ? 30.pw : const Spacer(),
          InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: selectedIndex == 0
                ? null
                : () {
                    Get.offAll(
                      () => const HomePageScreen(),
                      transition: Transition.fadeIn,
                    );
                  },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                60.pw,
                SvgPicture.asset(
                  selectedIndex == 0
                      ? Assets.bottomNavBarImagesHomeSelected
                      : Assets.bottomNavBarImagesHomeUnselected,
                ),
                2.ph,
                const Text(
                  "Home",
                  style: CustomTextStyles.mWhite412,
                ),
              ],
            ),
          ),
          Spacer(
            flex: context.isPortrait ? 1 : 3,
          ),
          InkWell(
            borderRadius: BorderRadius.circular(
              10,
            ),
            onTap: selectedIndex == 1
                ? null
                : () {
                    Get.offAll(
                      () => const AddNewCertificateScreen(),
                      transition: Transition.fadeIn,
                    );
                  },
            child: Column(
              children: [
                60.pw,
                SvgPicture.asset(
                  selectedIndex == 1
                      ? Assets.bottomNavBarImagesAddNewSelected
                      : Assets.bottomNavBarImagesAddNewUnselected,
                ),
                2.ph,
                const Text(
                  "Add New",
                  style: CustomTextStyles.mWhite412,
                ),
                5.ph,
              ],
            ),
          ),
          context.isPortrait ? 30.pw : const Spacer(),
        ],
      ),
    );
  }
}
