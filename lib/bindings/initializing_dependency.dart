import 'package:exoid/screens/home/new_certificate/add_new_certificate_verification_code/controller/add_new_verification_code_controller.dart';
import 'package:get/get.dart';

import '../screens/auth/wallet_setup/create_wallet/backup_wallet/backup_landing_screen/controller/backup_wallet_controller.dart';
import '../screens/auth/wallet_setup/create_wallet/backup_wallet/seed_phrase/controller/seed_phrase_controller.dart';
import '../screens/auth/wallet_setup/create_wallet/set_pin/controller/pin_controller.dart';
import '../screens/auth/wallet_setup/import_wallet/controller/import_wallet_controller.dart';
import '../screens/home/confirm_with_pin/confirm_with_pin_and_face_id/controller/confirm_with_pin_face_id_controller.dart';
import '../screens/home/confirm_with_pin/confirm_with_pin_and_finger_id/controller/confirm_with_pin_finger_id_controller.dart';
import '../screens/home/new_certificate/verify_email/controller/verifiy_email_controller.dart';
import '../screens/home/proof_generation/generating_proof/controller/generating_proof_controller.dart';
import '../screens/home/request/data_request/controller/data_request_controller.dart';
import '../screens/home/request/proof_request/controller/proof_request_controller.dart';
import '../screens/home/scan_qrcode/controller/scan_qrcode_controller.dart';
import '../screens/home/settings/change_pin/controller/change_pin_controller.dart';
import '../screens/home/settings/settings_landing_screen/controller/settings_controller.dart';

class InitializingDependency implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ImportWalletController(),
      fenix: true,
    );
    Get.lazyPut(
      () => PinController(),
      fenix: true,
    );
    Get.lazyPut(
      () => BackupWalletController(),
      fenix: true,
    );
    Get.lazyPut(
      () => SeedPhraseController(),
      fenix: true,
    );
    Get.lazyPut(
      () => SettingsController(),
      fenix: true,
    );
    Get.lazyPut(
      () => ChangePinController(),
      fenix: true,
    );
    Get.lazyPut(
      () => ConfirmWithPinFaceIdController(),
      fenix: true,
    );
    Get.lazyPut(
      () => ConfirmWithPinFingerIdController(),
      fenix: true,
    );
    Get.lazyPut(
      () => GeneratingProofController(),
      fenix: true,
    );
    Get.lazyPut(
      () => ProofRequestController(),
      fenix: true,
    );
    Get.lazyPut(
      () => ScanQrCodeController(),
      fenix: true,
    );
    Get.lazyPut(
      () => DataRequestController(),
      fenix: true,
    );
    Get.lazyPut(
      () => AddNewCertificateVerificationCodeController(),
      fenix: true,
    );
    Get.lazyPut(
      () => VerifyEmailController(),
      fenix: true,
    );
  }
}
