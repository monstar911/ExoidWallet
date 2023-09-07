import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common_components/new_certificate/accept_certificate_component.dart';
import '../../../../../generated/assets.dart';
import '../../certificate_collected/view/certificate_collected_screen.dart';

class AcceptCertificateScreen extends StatelessWidget {
  const AcceptCertificateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AcceptCertificateComponent(
      titleString: "Well done!",
      subTitle: "Accept your certificate!",
      imageAssetString: Assets.addNewCertificateAcceptCertificateImage,
      buttonString: "Accept Certification",
      buttonPressFunction: () {
        Get.to(
          () => const CertificateCollectedScreen(),
          transition: Transition.fadeIn,
        );
      },
    );
  }
}
