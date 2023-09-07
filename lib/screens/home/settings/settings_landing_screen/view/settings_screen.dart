import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common_components/background_container/background_container.dart';
import '../../../../../generated/assets.dart';
import '../../../../../reusable_widgets/custom_back_title_option.dart';
import '../../../../../reusable_widgets/custom_divider.dart';
import '../../../../../utils/colors/app_colors.dart';
import '../../../../../utils/constants/constant_lists.dart';
import '../components/settings_components.dart';
import '../controller/settings_controller.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsController = Get.find<SettingsController>();
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Container(
          height: context.height * 1,
          width: context.width * 1,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CustomBackTitleOption(
                iconAssetString: Assets.appBarIconsSettingIconTwo,
                titleString: "Settings",
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      10.ph,
                      BackgroundContainerWidget(
                        widget: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount:
                              settingsController.primarySettingsList.length,
                          separatorBuilder: (BuildContext context, int index) =>
                              const CustomDivider(),
                          itemBuilder: (BuildContext context, int index) {
                            return settingsController
                                    .primarySettingsList[index].isSwitch
                                ? GetBuilder<SettingsController>(
                                    builder: (controller) {
                                    return SettingsOptionsSwitchTile(
                                      settingIconImageString: settingsController
                                          .primarySettingsList[index]
                                          .settingIconImageString,
                                      settingOptionTitle: settingsController
                                          .primarySettingsList[index]
                                          .settingOptionTitle,
                                      onChangedFunction: (val) {
                                        controller
                                            .toggleSwitchFromPrimarySettingList(
                                          index: index,
                                          value: val,
                                        );
                                      },
                                      switchValue: settingsController
                                          .primarySettingsList[index]
                                          .switchValue,
                                    );
                                  })
                                : SettingsOptionsTile(
                                    settingIconImageString: settingsController
                                        .primarySettingsList[index]
                                        .settingIconImageString,
                                    settingOptionTitle: settingsController
                                        .primarySettingsList[index]
                                        .settingOptionTitle,
                                    onTapFunction: settingsController
                                        .primarySettingsList[index]
                                        .onTapFunction,
                                  );
                          },
                        ),
                      ),
                      20.ph,
                      BackgroundContainerWidget(
                        widget: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: ConstantLists.settingListTwo.length,
                          separatorBuilder: (BuildContext context, int index) =>
                              Divider(
                            indent: 58,
                            thickness: 2,
                            color: CColors.whiteColor.withOpacity(
                              0.25,
                            ),
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return SettingsOptionsTile(
                              settingIconImageString: ConstantLists
                                  .settingListTwo[index].settingIconImageString,
                              settingOptionTitle: ConstantLists
                                  .settingListTwo[index].settingOptionTitle,
                              onTapFunction: ConstantLists
                                  .settingListTwo[index].onTapFunction,
                            );
                          },
                        ),
                      ),
                      20.ph,
                      BackgroundContainerWidget(
                        widget: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: ConstantLists.settingListThree.length,
                          separatorBuilder: (BuildContext context, int index) =>
                              Divider(
                            indent: 58,
                            thickness: 2,
                            color: CColors.whiteColor.withOpacity(
                              0.25,
                            ),
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return SettingsOptionsTile(
                              settingIconImageString: ConstantLists
                                  .settingListThree[index]
                                  .settingIconImageString,
                              settingOptionTitle: ConstantLists
                                  .settingListThree[index].settingOptionTitle,
                              onTapFunction: ConstantLists
                                  .settingListThree[index].onTapFunction,
                            );
                          },
                        ),
                      ),
                      10.ph,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
