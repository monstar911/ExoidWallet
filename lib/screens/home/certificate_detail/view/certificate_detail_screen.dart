import 'package:exoid/reusable_widgets/app_bar/custom_appbar.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common_components/background_container/background_container.dart';
import '../../../../models/certificate_model.dart';
import '../../../../reusable_widgets/custom_divider.dart';
import '../../../../utils/text_styles/text_styles.dart';
import '../../delete_certificate/view/delete_certificate_screen.dart';
import '../components/certificate_detail_components.dart';

class CertificateDetailScreen extends StatelessWidget {
  final CertificateModel certificateModel;

  const CertificateDetailScreen({
    super.key,
    required this.certificateModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: CustomAppBar(
        needBackButton: true,
        needTitle: context.isPortrait ? false : true,
        titleText: certificateModel.certificateTitle,
        needDeleteAction: true,
        needActions: true,
        deleteFunction: () {
          Get.to(
            () => const DeleteCertificateScreen(),
            transition: Transition.fadeIn,
          );
        },
      ),
      body: Container(
        height: context.height * 1,
        width: context.width * 1,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            context.isPortrait
                ? Text(
                    certificateModel.certificateTitle,
                    style: CustomTextStyles.gWhite730,
                  )
                : const SizedBox.shrink(),
            const VerifiedBadgeWidget(
              iconData: Icons.verified,
              textString: "Verified",
            ),
            context.isPortrait ? 45.ph : 20.ph,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BackgroundContainerWidget(
                      widget: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: certificateModel.detailList.length,
                        separatorBuilder: (BuildContext context, int index) =>
                            const CustomDividerSecondary(),
                        itemBuilder: (BuildContext context, int index) {
                          return CertificateDetailWidget(
                            certificateDetailModel:
                                certificateModel.detailList[index],
                          );
                        },
                      ),
                    ),
                    10.ph,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
