import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBadge extends StatelessWidget {
  const CustomBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 14.h,
      width: 14.w,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: kSecondaryColor,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          '3',
          style: Styles.textStyle10.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
