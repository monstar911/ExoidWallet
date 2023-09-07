import 'package:flutter/material.dart';

import '../../utils/colors/app_colors.dart';
import '../../utils/text_styles/text_styles.dart';

class CustomRecoveryPhraseTextField extends StatelessWidget {
  final String? Function(String?)? validatorFunction;
  final TextEditingController textEditingController;
  final String hintText;
  final double width, height;
  final FocusNode? focusNode;

  const CustomRecoveryPhraseTextField({
    Key? key,
    this.width = 250,
    this.height = 50,
    this.hintText = "",
    required this.validatorFunction,
    required this.textEditingController,
    required this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        maxLines: 15,
        focusNode: focusNode,
        controller: textEditingController,
        textAlignVertical: TextAlignVertical.center,
        style: CustomTextStyles.mWhite516,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          errorStyle: const TextStyle(
            fontSize: 0,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          hintText: hintText,
          hintStyle: CustomTextStyles.mWhite516,
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
                12,
              ),
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: CColors.primaryAccentColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                12,
              ),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(
                12,
              ),
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(
                12,
              ),
            ),
          ),
        ),
        validator: validatorFunction,
      ),
    );
  }
}
