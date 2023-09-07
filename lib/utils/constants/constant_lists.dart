import 'dart:developer';
import 'package:exoid/models/certificate_detail_model.dart';
import 'package:exoid/screens/auth/starting_point/view/starting_point_screen.dart';
import 'package:exoid/screens/home/home_page/view/home_page_screen.dart';
import 'package:exoid/utils/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../generated/assets.dart';
import '../../models/add_new_certificate_model.dart';
import '../../models/certificate_model.dart';
import '../../models/recovery_phrase_model.dart';
import '../../models/settings_model.dart';
import '../../models/notifications_model.dart';
import '../../screens/auth/wallet_setup/create_wallet/backup_wallet/seed_phrase/view/seed_phrase_reveal.dart';
import '../../screens/home/new_certificate/verify_email/view/verify_email_screen.dart';
import '../../screens/home/settings/change_pin/view/enter_current_pin_screen.dart';
import '../../screens/home/settings/delete_account/view/delete_account_screen.dart';

class ConstantLists {
  ConstantLists._();

  static List<RecoveryPhraseModel> recoveryPhraseList = [
    RecoveryPhraseModel(
      recoveryPhrase: "Horse",
      uniqueNumber: 1,
    ),
    RecoveryPhraseModel(
      recoveryPhrase: "Car",
      uniqueNumber: 2,
    ),
    RecoveryPhraseModel(
      recoveryPhrase: "Document",
      uniqueNumber: 3,
    ),
    RecoveryPhraseModel(
      recoveryPhrase: "Stone",
      uniqueNumber: 4,
    ),
    RecoveryPhraseModel(
      recoveryPhrase: "Ship",
      uniqueNumber: 5,
    ),
    RecoveryPhraseModel(
      recoveryPhrase: "Catch",
      uniqueNumber: 6,
    ),
    RecoveryPhraseModel(
      recoveryPhrase: "Artificial",
      uniqueNumber: 7,
    ),
    RecoveryPhraseModel(
      recoveryPhrase: "Craft",
      uniqueNumber: 8,
    ),
    RecoveryPhraseModel(
      recoveryPhrase: "Beer",
      uniqueNumber: 9,
    ),
    RecoveryPhraseModel(
      recoveryPhrase: "Mailbox",
      uniqueNumber: 10,
    ),
    RecoveryPhraseModel(
      recoveryPhrase: "Water",
      uniqueNumber: 11,
    ),
    RecoveryPhraseModel(
      recoveryPhrase: "Plane",
      uniqueNumber: 12,
    ),
  ];
  static List<NotificationModel> notificationList = [
    NotificationModel(
      notificationImage: "",
      notificationTitle: "Learn more about Exoid",
      notificationSubTitle: "Are you curious...",
      time: "5m ago",
    ),
    NotificationModel(
      notificationImage: "",
      notificationTitle: "Follow us on twitter",
      notificationSubTitle: "Are you curious...",
      time: "13h ago",
    ),
    NotificationModel(
      notificationImage: "",
      notificationTitle: "Do you like exoid?",
      notificationSubTitle: "Leave a feedback!",
      time: "13h ago",
    ),
    NotificationModel(
      notificationImage: "",
      notificationTitle: "Do you have any question?",
      notificationSubTitle: "Join our discord!",
      time: "13h ago",
    ),
    NotificationModel(
      notificationImage: "",
      notificationTitle: "Welcome to exoid!",
      notificationSubTitle: "Visit our website",
      time: "13h ago",
    ),
    NotificationModel(
      notificationImage: "",
      notificationTitle: "Do you like exoid?",
      notificationSubTitle: "Leave a feedback!",
      time: "13h ago",
    ),
    NotificationModel(
      notificationImage: "",
      notificationTitle: "Do you have any question?",
      notificationSubTitle: "Join our discord!",
      time: "13h ago",
    ),
    NotificationModel(
      notificationImage: "",
      notificationTitle: "Welcome to exoid!",
      notificationSubTitle: "Visit our website",
      time: "13h ago",
    ),
    NotificationModel(
      notificationImage: "",
      notificationTitle: "Do you like exoid?",
      notificationSubTitle: "Leave a feedback!",
      time: "13h ago",
    ),
  ];

  static List<dynamic> settingListOne = [
    SettingsOnTapModel(
      isSwitch: false,
      settingIconImageString: Assets.settingsImagesChangePin,
      settingOptionTitle: "Change Pin",
      onTapFunction: () {
        Get.to(
          () => const EnterCurrentPinScreen(),
          transition: Transition.fadeIn,
        );
      },
    ),
    SettingSwitchModel(
      isSwitch: true,
      settingIconImageString: Assets.settingsImagesNotification,
      settingOptionTitle: "Enable Notification",
      switchValue: false,
    ),
    SettingSwitchModel(
      isSwitch: true,
      settingIconImageString: Assets.settingsImagesFaceId,
      settingOptionTitle: "Enable Face ID",
      switchValue: false,
    ),
    SettingSwitchModel(
      isSwitch: true,
      settingIconImageString: Assets.settingsImagesAskPin,
      settingOptionTitle: "Ask Pin to sign in",
      switchValue: false,
    ),
    SettingSwitchModel(
      isSwitch: true,
      settingIconImageString: Assets.settingsImagesCredentialsBackup,
      settingOptionTitle: "Backup your credentials",
      switchValue: false,
    ),
    SettingsOnTapModel(
      isSwitch: false,
      settingIconImageString: Assets.settingsImagesWalletBackup,
      settingOptionTitle: "Backup your wallet",
      onTapFunction: () {
        Get.to(
          () => SeedPhraseRevealScreen(
            successNavigationFunction: () {
              Get.offAll(
                () => const HomePageScreen(),
                transition: Transition.fadeIn,
              );
            },
          ),
          transition: Transition.fadeIn,
        );
      },
    ),
  ];
  static List<SettingsOnTapModel> settingListTwo = [
    SettingsOnTapModel(
      isSwitch: false,
      settingIconImageString: Assets.settingsImagesDelete,
      settingOptionTitle: "Delete my wallet",
      onTapFunction: () {
        Get.to(
          () => const DeleteAccountScreen(),
          transition: Transition.fadeIn,
        );
      },
    ),
    SettingsOnTapModel(
      isSwitch: false,
      settingIconImageString: Assets.settingsImagesSignOut,
      settingOptionTitle: "Sign out",
      onTapFunction: () {
        Get.offAll(
          () => const StartingPointScreen(),
          transition: Transition.fadeIn,
        );
      },
    ),
  ];
  static List<SettingsOnTapModel> settingListThree = [
    SettingsOnTapModel(
      isSwitch: false,
      settingIconImageString: Assets.settingsImagesPrivacyPolicy,
      settingOptionTitle: "Privacy policy",
      onTapFunction: () {
        log("Tapped");
      },
    ),
    SettingsOnTapModel(
      isSwitch: false,
      settingIconImageString: Assets.settingsImagesTermsAndConditions,
      settingOptionTitle: "Terms and conditions",
      onTapFunction: () {
        log("Tapped");
      },
    ),
  ];
  static List<CertificateModel> certificatesList = [
    CertificateModel(
      isVerified: true,
      certificateTitle: "Digital Identity",
      backgroundImageAssetString:
          Assets.homepageImagesHompageCertificateImageOne,
      backGroundColor: CColors.primaryColor,
      detailList: [
        CertificateDetailModel(
          attribute: "Name",
          attributeValue: "Federico Grilli",
        ),
        CertificateDetailModel(
          attribute: "Birthday",
          attributeValue: "18/12/1999",
        ),
        CertificateDetailModel(
          attribute: "Document Type",
          attributeValue: "Driving Licence",
        ),
        CertificateDetailModel(
          attribute: "Country",
          attributeValue: "Italy",
        ),
        CertificateDetailModel(
          attribute: "Address",
          attributeValue: "Exoid street 32",
        ),
        CertificateDetailModel(
          attribute: "Issuing Day",
          attributeValue: "12 May 2018",
        ),
        CertificateDetailModel(
          attribute: "Expiration Day",
          attributeValue: "12 May 2018",
        ),
      ],
    ),
    CertificateModel(
      isVerified: true,
      certificateTitle: "Email Address",
      backgroundImageAssetString:
          Assets.homepageImagesHompageCertificateImageTwo,
      backGroundColor: CColors.orangeAccentTwo,
      detailList: [
        CertificateDetailModel(
          attribute: "Address",
          attributeValue: "federico.grilli@exoid.io",
        ),
      ],
    ),
    CertificateModel(
      isVerified: true,
      certificateTitle: "Twitter Account",
      backgroundImageAssetString:
          Assets.homepageImagesHompageCertificateImageThree,
      backGroundColor: CColors.blueAccent,
      detailList: [
        CertificateDetailModel(
          attribute: "Handle",
          attributeValue: "@exoidxyz",
        ),
      ],
    ),
    CertificateModel(
      isVerified: false,
      certificateTitle: "Facebook",
      backgroundImageAssetString:
          Assets.homepageImagesHompageCertificateImageOne,
      backGroundColor: CColors.blueAccent,
      detailList: [],
    ),
  ];
  static List<AddNewCertificateModel> addNewCertificateList = [
    AddNewCertificateModel(
      iconData: Icons.person,
      certificateAttribute: "Digital Identity",
      onTapFunction: () {},
    ),
    AddNewCertificateModel(
      iconData: Icons.email_outlined,
      certificateAttribute: "Mail Address",
      onTapFunction: () {
        Get.to(
          () => const VerifyEmailScreen(),
          transition: Transition.fadeIn,
        );
      },
    ),
    AddNewCertificateModel(
      iconData: Icons.email_outlined,
      certificateAttribute: "Mail Address 2",
      onTapFunction: () {
        Get.to(
          () => const VerifyEmailScreen(),
          transition: Transition.fadeIn,
        );
      },
    ),
  ];
}
