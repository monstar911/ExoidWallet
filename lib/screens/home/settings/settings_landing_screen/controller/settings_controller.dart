import 'package:exoid/utils/constants/constant_lists.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  final primarySettingsList = ConstantLists.settingListOne;

  toggleSwitchFromPrimarySettingList({
    required int index,
    required bool value,
  }) {
    primarySettingsList[index].switchValue = value;
    update();
  }
}
