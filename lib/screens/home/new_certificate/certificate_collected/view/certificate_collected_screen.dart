import 'package:exoid/screens/home/home_page/view/home_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common_components/new_certificate/accept_certificate_component.dart';
import '../../../../../generated/assets.dart';

class CertificateCollectedScreen extends StatelessWidget {
  const CertificateCollectedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AcceptCertificateComponent(
      titleString: "Your email account is\nnow certified!",
      needSubTitle: false,
      imageAssetString: Assets.addNewCertificateCollectCertificateImage,
      buttonString: "Home",
      buttonPressFunction: () {
        Get.offAll(
          () => const HomePageScreen(),
          transition: Transition.fadeIn,
        );
      },
    );
  }
}
