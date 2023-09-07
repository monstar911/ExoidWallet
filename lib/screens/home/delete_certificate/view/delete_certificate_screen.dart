import 'package:exoid/screens/home/home_page/view/home_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common_components/delete_component/delete_screen_component.dart';

class DeleteCertificateScreen extends StatelessWidget {
  const DeleteCertificateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DeleteAccountComponent(
      titleText: "Delete credential",
      descriptionText: "Are you sure you wish to delete this certificate?",
      deleteFunction: () {
        Get.offAll(
          () => const HomePageScreen(),
          transition: Transition.fadeIn,
        );
      },
    );
  }
}
