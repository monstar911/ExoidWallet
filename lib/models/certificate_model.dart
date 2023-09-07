import 'package:flutter/material.dart';

import 'certificate_detail_model.dart';

class CertificateModel {
  bool isVerified;
  String certificateTitle, backgroundImageAssetString;
  Color backGroundColor;
  List<CertificateDetailModel> detailList;

  CertificateModel({
    required this.isVerified,
    required this.certificateTitle,
    required this.backgroundImageAssetString,
    required this.backGroundColor,
    required this.detailList,
  });
}
