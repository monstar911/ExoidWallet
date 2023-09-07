import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DataRequestController extends GetxController {
  TextEditingController dataOneController = TextEditingController();
  TextEditingController dataTwoController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    dataOneController.dispose();
    dataTwoController.dispose();
  }
}
