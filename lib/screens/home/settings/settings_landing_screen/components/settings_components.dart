import 'package:exoid/utils/gaps/gaps.dart';
import 'package:exoid/utils/text_styles/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/colors/app_colors.dart';



class SettingsOptionsTile extends StatelessWidget {
  final Function()? onTapFunction;
  final String settingIconImageString, settingOptionTitle;

  const SettingsOptionsTile({
    super.key,
    required this.settingIconImageString,
    required this.settingOptionTitle,
    required this.onTapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFunction,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 36,
            width: 36,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: CColors.primaryColor,
            ),
            child: SvgPicture.asset(settingIconImageString),
          ),
          10.pw,
          Expanded(
            child: Text(
              settingOptionTitle,
              style: CustomTextStyles.mWhite518,
            ),
          ),
          10.pw,
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: CColors.whiteColor,
          ),
        ],
      ),
    ).paddingSymmetric(
      horizontal: 10,
      vertical: 10,
    );
  }
}

class SettingsOptionsSwitchTile extends StatelessWidget {
  final bool switchValue;
  final Function(bool)? onChangedFunction;
  final String settingIconImageString, settingOptionTitle;

  const SettingsOptionsSwitchTile({
    super.key,
    required this.settingIconImageString,
    required this.settingOptionTitle,
    required this.onChangedFunction,
    required this.switchValue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 36,
          width: 36,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: CColors.primaryColor,
          ),
          child: SvgPicture.asset(settingIconImageString),
        ),
        10.pw,
        Expanded(
          child: Text(
            settingOptionTitle,
            style: CustomTextStyles.mWhite518,
          ),
        ),
        CupertinoSwitch(
          value: switchValue,
          onChanged: onChangedFunction,
          thumbColor: Colors.white,
          activeColor: CColors.primaryColor,
          trackColor: CColors.scaffoldBackground,
        ),
      ],
    ).paddingSymmetric(
      horizontal: 10,
      vertical: 10,
    );
  }
}
