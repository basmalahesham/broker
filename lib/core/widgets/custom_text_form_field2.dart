import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField2 extends StatelessWidget {
  const CustomTextFormField2({
    super.key,
    required this.hintText,
    required this.validator,
    this.obscureText = false,
  });

  final String hintText;
  final String? Function(String?)? validator;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Styles.textStyle14.copyWith(
          color: Colors.grey,
        ),
        fillColor: Color(0xFFFDFDFD),
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
