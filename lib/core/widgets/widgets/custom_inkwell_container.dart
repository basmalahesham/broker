import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInkwellContainer extends StatelessWidget {
  const CustomInkwellContainer({
    super.key,
    required this.onTap,
    required this.text,
    required this.icon,
  });

  final void Function() onTap;
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 150.w,
        height: 65.h,
        decoration: BoxDecoration(
          color: const Color(0xFFFEFEFE),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color(0xFFAFAFAF),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Color(0xFF332620),
              size: 28,
            ),
            Text(
              text,
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.normal,
                color: const Color(0xFF332620),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
