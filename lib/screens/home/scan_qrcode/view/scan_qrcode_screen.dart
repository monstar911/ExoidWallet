import 'package:exoid/screens/home/scan_qrcode/controller/scan_qrcode_controller.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../../reusable_widgets/app_bar/custom_appbar.dart';
import '../../../../reusable_widgets/bottom_nav_bar/reusable_botton_navbar.dart';
import '../../../../reusable_widgets/buttons/custom_floating_button.dart';
import '../../../../utils/colors/app_colors.dart';
import '../../../../utils/text_styles/text_styles.dart';

class ScanQrCodeScreen extends StatelessWidget {
  const ScanQrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scanQrCodeController = Get.find<ScanQrCodeController>();
    return Scaffold(
      appBar: CustomAppBar(
        titleText: "Bring your identity anywhere.",
        needTitle: context.isPortrait ? false : true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                context.isPortrait
                    ? const Text(
                        "Bring your identity anywhere.",
                        style: CustomTextStyles.gWhite724,
                        textAlign: TextAlign.center,
                      )
                    : const SizedBox.shrink(),
                context.isPortrait ? 20.ph : const SizedBox.shrink(),
                const Text(
                  "Scan QR Code",
                  style: CustomTextStyles.mWhite516,
                  textAlign: TextAlign.center,
                ),
                Spacer(
                  flex: context.isPortrait ? 2 : 1,
                ),
                SizedBox(
                  height: 250,
                  width: 250,
                  child: QRView(
                    overlay: QrScannerOverlayShape(
                      borderRadius: 25,
                      borderLength: 25,
                      borderColor: CColors.primaryColor,
                      overlayColor: CColors.scaffoldBackground,
                      borderWidth: 10,
                    ),
                    key: scanQrCodeController.qrKey,
                    onQRViewCreated: scanQrCodeController.onQRViewCreated,
                  ),
                ),
                Spacer(
                  flex: context.isPortrait ? 2 : 1,
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
      floatingActionButton: const CustomFloatingButton(
        onPressedFunction: null,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomBottomAppBar(
        selectedIndex: 2,
      ),
    );
  }
}
