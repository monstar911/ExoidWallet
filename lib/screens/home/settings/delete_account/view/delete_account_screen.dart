import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common_components/delete_component/delete_screen_component.dart';
import '../../../../auth/starting_point/view/starting_point_screen.dart';

class DeleteAccountScreen extends StatelessWidget {
  const DeleteAccountScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DeleteAccountComponent(
      titleText: "Delete your wallet",
      descriptionText: "Are you sure you wish to delete your wallet?",
      deleteFunction: () {
        Get.offAll(
          () => const StartingPointScreen(),
          transition: Transition.fadeIn,
        );
      },
    );
  }
}
