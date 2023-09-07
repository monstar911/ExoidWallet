import 'package:get/get.dart';

class BackupWalletController extends GetxController {
  final needBackUp = false.obs;

  toggleNeedBackUp({required bool value}) {
    needBackUp.value = value;
  }
}
