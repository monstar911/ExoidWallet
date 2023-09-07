import 'dart:developer';

import 'package:exoid/screens/home/request/proof_request/view/proof_request_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../request/data_request/view/data_request_screen.dart';

class ScanQrCodeController extends GetxController {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  void onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      log(scanData.code!);
      if (scanData.code == "This is Proof Request Code.") {
        disposeControllers();
        Get.to(
          () => const ProofRequestScreen(),
          transition: Transition.fadeIn,
        );
      } else if (scanData.code == "This is Data Request Code.") {
        disposeControllers();
        Get.to(
          () => const DataRequestScreen(),
          transition: Transition.fadeIn,
        );
      }
    });
  }

  disposeControllers() {
    controller!.stopCamera();
    controller?.dispose();
  }

  @override
  void onClose() {
    controller?.dispose();
  }
}
