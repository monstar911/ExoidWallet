import 'package:exoid/utils/gaps/gaps.dart';
import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class CustomRequestTextField extends StatelessWidget {
  final String? Function(String?)? validatorFunction;
  final TextEditingController textEditingController;
  final String hintText;
  final double width, height;

  const CustomRequestTextField({
    Key? key,
    this.width = 250,
    this.height = 50,
    this.hintText = "",
    required this.validatorFunction,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        controller: textEditingController,
        textAlignVertical: TextAlignVertical.center,
        style: CustomTextStyles.mWhite520,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              2.pw,
              Container(
                height: 48,
                width: 6,
                decoration: BoxDecoration(
                  color: CColors.primaryColor,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              2.pw,
            ],
          ),
          prefixIconConstraints: const BoxConstraints(
            maxWidth: 20,
            minWidth: 20,
            maxHeight: 48,
            minHeight: 48,
          ),
          hintText: hintText,
          hintStyle: CustomTextStyles.mWhite520,
          enabled: true,
          filled: true,
          fillColor: CColors.primaryButtonColor,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(
                12,
              ),
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: CColors.primaryAccentColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                16,
              ),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(
                16,
              ),
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(
                16,
              ),
            ),
          ),
        ),
        validator: validatorFunction,
      ),
    );
  }
}
