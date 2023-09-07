import 'package:exoid/screens/home/new_certificate/add_new_certificate_landing_screen/components/add_new_certificate_components.dart';
import 'package:exoid/utils/constants/constant_lists.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../common_components/background_container/background_container.dart';
import '../../../../../generated/assets.dart';
import '../../../../../reusable_widgets/app_bar/custom_appbar.dart';
import '../../../../../reusable_widgets/bottom_nav_bar/reusable_botton_navbar.dart';
import '../../../../../reusable_widgets/buttons/custom_floating_button.dart';
import '../../../../../reusable_widgets/custom_divider.dart';
import '../../../../../utils/text_styles/text_styles.dart';
import '../../../scan_qrcode/view/scan_qrcode_screen.dart';

class AddNewCertificateScreen extends StatelessWidget {
  const AddNewCertificateScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              Assets.addNewCertificateAddNewCertificateImage,
            ),
            20.ph,
            const Text(
              "Add new certificates",
              style: CustomTextStyles.gWhite724,
              textAlign: TextAlign.center,
            ),
            20.ph,
            const Text(
              "Compose your identity lego",
              style: CustomTextStyles.mPrimary520,
              textAlign: TextAlign.center,
            ),
            20.ph,
            Flexible(
              child: BackgroundContainerWidget(
                widget: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: ConstantLists.addNewCertificateList.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const CustomDivider(),
                  itemBuilder: (BuildContext context, int index) {
                    return AddNewCertificateOptionsTile(
                      iconData:
                          ConstantLists.addNewCertificateList[index].iconData,
                      certificateAttribute: ConstantLists
                          .addNewCertificateList[index].certificateAttribute,
                      onTapFunction: ConstantLists
                          .addNewCertificateList[index].onTapFunction,
                    );
                  },
                ),
              ),
            ),
            50.ph,
          ],
        ).paddingSymmetric(
          horizontal: 20,
          vertical: 20,
        ),
      ),
      floatingActionButton: CustomFloatingButton(
        onPressedFunction: () {
          Get.to(
            () => const ScanQrCodeScreen(),
            transition: Transition.fadeIn,
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomBottomAppBar(
        selectedIndex: 1,
      ),
    );
  }
}
