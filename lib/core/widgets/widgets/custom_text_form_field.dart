import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key, required this.text,
  });

  final   String  text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110.w,
      height: 40.h,
      child: TextFormField(
        validator: (value) {
          if (value == null) {
            return 'Please enter your email';
          }
          return null;
        },
        keyboardType: TextInputType.number,
        //inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: text,
          hintStyle: Styles.textStyle14.copyWith(
            color: const Color(0xFFAFAFAF),
          ),
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
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: const BorderSide(
              color: Color(0xFFAFAFAF),
            ),
          ),
        ),
      ),
    );
  }
}
