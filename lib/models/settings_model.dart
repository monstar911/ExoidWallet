class SettingsOnTapModel {
  bool isSwitch;
  String settingIconImageString, settingOptionTitle;
  Function()? onTapFunction;

  SettingsOnTapModel({
    required this.isSwitch,
    required this.settingIconImageString,
    required this.settingOptionTitle,
    required this.onTapFunction,
  });
}

class SettingSwitchModel {
  String settingIconImageString, settingOptionTitle;
  bool isSwitch, switchValue;

  SettingSwitchModel({
    required this.isSwitch,
    required this.settingIconImageString,
    required this.settingOptionTitle,
    required this.switchValue,
  });
}
