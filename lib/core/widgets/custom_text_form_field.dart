import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.validator,
    this.obscureText = false,
    this.controller, this.keyboardType, this.maxLines, this.maxHeight,
  });

  final String hintText;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? maxLines;
  final double? maxHeight;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines??1,
      keyboardType: keyboardType,
      //inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        constraints: BoxConstraints(
          maxHeight: maxHeight??40.h,
        ),
        hintText: hintText,
        hintStyle: Styles.textStyle14.copyWith(
          fontWeight: FontWeight.normal,
          color: const Color(0xFFAFAFAF),
        ),
        fillColor: const Color(0xFFFDFDFD),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: const BorderSide(
            color: Color(0xFFAFAFAF),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: const BorderSide(
            color: Color(0xFFAFAFAF),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: const BorderSide(
            color: Color(0xFFAFAFAF),
          ),
        ),
      ),
    );
  }
}
