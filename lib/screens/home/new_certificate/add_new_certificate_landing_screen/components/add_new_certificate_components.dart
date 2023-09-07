import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/colors/app_colors.dart';
import '../../../../../utils/text_styles/text_styles.dart';

class AddNewCertificateOptionsTile extends StatelessWidget {
  final IconData iconData;
  final String certificateAttribute;
  final Function()? onTapFunction;

  const AddNewCertificateOptionsTile({
    super.key,
    required this.iconData,
    required this.certificateAttribute,
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
            child: Icon(
              iconData,
              color: CColors.whiteColor,
            ),
          ),
          10.pw,
          Expanded(
            child: Text(
              certificateAttribute,
              style: CustomTextStyles.mWhite518,
            ),
          ),
          10.pw,
          const Icon(
            Icons.add,
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
