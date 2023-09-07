import 'package:flutter/material.dart';

extension AlignExtension on Widget {
  Widget alignWidget({Alignment alignment = Alignment.center}) {
    return Align(
      alignment: alignment,
      child: this,
    );
  }
}
