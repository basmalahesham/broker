import 'package:broker/core/utils/functions/show_custom_bottom_sheet.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarHomeView extends StatelessWidget {
  const CustomAppBarHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
        top: 48,
      ),
      width: 375.w,
      height: 96.h,
      decoration: const BoxDecoration(
        color: Color(0xFF332620),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              showCustomBottomSheet(context);
            },
            child: Text(
              'تسجيل دخول',
              style: Styles.textStyle11.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          Image.asset(
            'assets/images/Frame 1171275259.png',
          ),
        ],
      ),
    );
  }
}
