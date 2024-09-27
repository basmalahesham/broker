import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAmenityContainer extends StatelessWidget {
  const CustomAmenityContainer({
    super.key,
    required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91.w,
      height: 30.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: const Color(0xFF856E66),
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: Styles.textStyle12.copyWith(
            fontWeight: FontWeight.w400,
            color: const Color(0xFF332620),
          ),
        ),
      ),
    );
  }
}
