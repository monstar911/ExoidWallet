import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProofRequestController extends GetxController {
  TextEditingController claimOneController = TextEditingController();
  TextEditingController claimTwoController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    claimOneController.dispose();
    claimTwoController.dispose();
  }
}
