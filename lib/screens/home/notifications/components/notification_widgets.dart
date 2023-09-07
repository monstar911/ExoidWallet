import 'package:exoid/utils/colors/app_colors.dart';
import 'package:exoid/utils/gaps/gaps.dart';
import 'package:exoid/utils/sizes/screen_sizes.dart';
import 'package:exoid/utils/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  final String notificationImage,
      notificationTitle,
      notificationSubTitle,
      timeAgo;
  final Function()? onTapFunction;

  const NotificationTile({
    super.key,
    required this.notificationImage,
    required this.notificationTitle,
    required this.notificationSubTitle,
    required this.timeAgo,
    required this.onTapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapFunction,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: CColors.primaryButtonColor,
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        height: 75,
        width: context.width * 1,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: CColors.whiteColor,
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
                height: 48,
                width: 48,
              ),
            ),
            10.pw,
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FittedBox(
                    child: Text(
                      notificationTitle,
                      style: CustomTextStyles.mWhite518,
                    ),
                  ),
                  5.ph,
                  FittedBox(
                    child: Text(
                      notificationSubTitle,
                      style: CustomTextStyles.mWhite414,
                    ),
                  ),
                ],
              ),
            ),
            10.pw,
            Text(
              timeAgo,
              style: CustomTextStyles.mWhiteOpac412,
            ),
          ],
        ),
      ),
    );
  }
}
