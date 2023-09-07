import 'package:exoid/reusable_widgets/app_bar/custom_appbar.dart';
import 'package:exoid/reusable_widgets/buttons/custom_elevated_button.dart';
import 'package:exoid/reusable_widgets/buttons/custom_floating_button.dart';
import 'package:exoid/screens/home/certificate_detail/view/certificate_detail_screen.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../reusable_widgets/bottom_nav_bar/reusable_botton_navbar.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/constants/constant_lists.dart';
import '../../../../utils/text_styles/text_styles.dart';
import '../../new_certificate/add_new_certificate_landing_screen/view/add_new_certificate_screen.dart';
import '../../scan_qrcode/view/scan_qrcode_screen.dart';
import '../component/home_page_components.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        needBackButton: false,
        needActions: true,
        titleText: "My Certificates",
        needTitle: context.isPortrait ? false : true,
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
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "My Certificates",
                        style: CustomTextStyles.gWhite730,
                      ),
                      10.ph,
                    ],
                  )
                : const SizedBox.shrink(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: ConstantLists.certificatesList.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          10.ph,
                      itemBuilder: (BuildContext context, int index) {
                        return CertificateCardComponent(
                          isVerified:
                              ConstantLists.certificatesList[index].isVerified,
                          certificateTitle: ConstantLists
                              .certificatesList[index].certificateTitle,
                          backgroundImageAssetString: ConstantLists
                              .certificatesList[index]
                              .backgroundImageAssetString,
                          backGroundColor: ConstantLists
                              .certificatesList[index].backGroundColor,
                          onTapFunction: ConstantLists
                                  .certificatesList[index].isVerified
                              ? () {
                                  Get.to(
                                    () => CertificateDetailScreen(
                                      certificateModel:
                                          ConstantLists.certificatesList[index],
                                    ),
                                    transition: Transition.fadeIn,
                                  );
                                }
                              : null,
                          addNewFunction:
                              ConstantLists.certificatesList[index].isVerified
                                  ? null
                                  : () {
                                      Get.to(
                                        () => const AddNewCertificateScreen(),
                                        transition: Transition.fadeIn,
                                      );
                                    },
                        );
                      },
                    ),
                    20.ph,
                    CustomElevatedButton(
                      onPressedFunction: () {
                        showModalBottomSheet(
                          elevation: 0.0,
                          backgroundColor: CColors.scaffoldBackground,
                          enableDrag: true,
                          showDragHandle: true,
                          isScrollControlled: true,
                          constraints:
                              BoxConstraints(maxHeight: context.height * 0.8),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                40,
                              ),
                              topRight: Radius.circular(
                                40,
                              ),
                              bottomLeft: Radius.zero,
                              bottomRight: Radius.zero,
                            ),
                          ),
                          context: context,
                          builder: (BuildContext context) {
                            return const ThirdPartyPopUp();
                          },
                        );
                      },
                      buttonText: "Third Party Proof Request",
                      width: context.width * 1,
                    ),
                    50.ph,
                  ],
                ),
              ),
            ),
          ],
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
        selectedIndex: 0,
      ),
    );
  }
}
