import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class SimpleTextField extends StatelessWidget {
  final String? Function(String?)? validatorFunction;
  final TextEditingController textEditingController;
  final String hintText;
  final double width, height;

  const SimpleTextField({
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
        style: CustomTextStyles.mWhite516,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 15,
          ),
          hintText: hintText,
          hintStyle: CustomTextStyles.mWhite516,
          enabled: true,
          filled: true,
          errorStyle: const TextStyle(
            fontSize: 0,
          ),
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
          focusedErrorBorder: const OutlineInputBorder(
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
