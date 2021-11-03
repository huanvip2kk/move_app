import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_text_style.dart';

class CommonTextFormField extends StatelessWidget {
  const CommonTextFormField({
    Key? key,
    this.controller,
    this.labelText,
    this.onChanged,
    this.textFormFieldKey,
    this.textInputAction,
    this.onEditingComplete,
    this.obscureText,
    this.suffixIcon,
    this.validator,
    this.autovalidateMode,
    this.textInputType,
    this.prefixIcon,
    this.focusedBorderColor,
    this.focusedBorder,
    this.enableBorder,
    this.hintText,
  }) : super(key: key);

  final TextEditingController? controller;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? textInputType;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final FormFieldValidator<String>? validator;
  final bool? obscureText;
  final VoidCallback? onEditingComplete;
  final TextInputAction? textInputAction;
  final GlobalKey? textFormFieldKey;
  final ValueChanged<String>? onChanged;
  final Color? focusedBorderColor;
  final InputBorder? focusedBorder;
  final InputBorder? enableBorder;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      key: textFormFieldKey,
      textInputAction: textInputAction,
      obscureText: obscureText ?? false,
      controller: controller,
      autovalidateMode: autovalidateMode,
      keyboardType: textInputType,
      // cursorColor: AppColors.black,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(26.r),
          ),
        ),
        labelText: labelText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: AppTextStyle.fontSize14.copyWith(
          fontWeight: FontWeight.bold,
          color: AppColors.grey400,
        ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: focusedBorderColor ?? AppColors.primaryColor,
              ),
              borderRadius: BorderRadius.circular(
                26.0,
              ),
            ),
        enabledBorder: enableBorder,
      ),
      validator: validator,
      onEditingComplete: onEditingComplete,
    );
  }
}
