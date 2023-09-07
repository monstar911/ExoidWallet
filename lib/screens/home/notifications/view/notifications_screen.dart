import 'package:exoid/screens/home/notifications/components/notification_widgets.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../generated/assets.dart';
import '../../../../reusable_widgets/custom_back_title_option.dart';
import '../../../../utils/constants/constant_lists.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                iconAssetString: Assets.appBarIconsNotificationIconTwo,
                titleString: "Notifications",
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      10.ph,
                      ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: ConstantLists.notificationList.length,
                        separatorBuilder: (BuildContext context, int index) =>
                            10.ph,
                        itemBuilder: (BuildContext context, int index) {
                          return NotificationTile(
                            notificationImage: ConstantLists
                                .notificationList[index].notificationImage,
                            notificationTitle: ConstantLists
                                .notificationList[index].notificationTitle,
                            notificationSubTitle: ConstantLists
                                .notificationList[index].notificationSubTitle,
                            timeAgo: ConstantLists.notificationList[index].time,
                            onTapFunction: () {},
                          );
                        },
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
