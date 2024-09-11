import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField2 extends StatelessWidget {
  const CustomTextFormField2({
    super.key,
    required this.hintText,
    this.validator,
    this.obscureText = false,
    this.controller, this.keyboardType,
  });

  final String hintText;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        constraints: BoxConstraints(
          maxHeight: 40.h,
        ),
        hintText: hintText,
        hintStyle: Styles.textStyle14.copyWith(
          fontWeight: FontWeight.normal,
          color: Colors.grey,
        ),
        fillColor: const Color(0xFFFDFDFD),
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
