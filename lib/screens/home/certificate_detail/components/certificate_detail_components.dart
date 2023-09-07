import 'package:exoid/models/certificate_detail_model.dart';
import 'package:exoid/utils/colors/app_colors.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:exoid/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class VerifiedBadgeWidget extends StatelessWidget {
  final IconData iconData;
  final String textString;

  const VerifiedBadgeWidget({
    super.key,
    required this.iconData,
    required this.textString,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          color: CColors.primaryColor),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            color: CColors.whiteColor,
          ),
          10.pw,
          Text(
            textString,
            style: CustomTextStyles.mWhite514,
          )
        ],
      ),
    );
  }
}

class CertificateDetailWidget extends StatelessWidget {
  final CertificateDetailModel certificateDetailModel;

  const CertificateDetailWidget({
    super.key,
    required this.certificateDetailModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FittedBox(
            child: Text(
              certificateDetailModel.attribute,
              style: CustomTextStyles.mWhite514,
            ),
          ),
          20.pw,
          FittedBox(
            child: Text(
              certificateDetailModel.attributeValue,
              style: CustomTextStyles.mWhite518,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
