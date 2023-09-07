import 'package:flutter/material.dart';

class AddNewCertificateModel {
  IconData iconData;
  String certificateAttribute;
  Function()? onTapFunction;

  AddNewCertificateModel({
    required this.iconData,
    required this.certificateAttribute,
    required this.onTapFunction,
  });
}
