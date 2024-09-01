import 'package:broker/core/utils/styles.dart';
import 'package:broker/features/messages/presentation/views/widgets/custom_badge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarMessageView extends StatelessWidget {
  const CustomAppBarMessageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 98.h,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16,
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'الرسائل',
                  style: Styles.textStyle22,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF656565),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            InkWell(
              onTap: (){},
              child: Container(
                width: 104.w,
                height: 26.h,
                decoration: BoxDecoration(
                  color: const Color(0xFFFEFEFE),
                  borderRadius: BorderRadius.circular(26),
                  border: Border.all(
                    color: const Color(0xFFAFAFAF),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.archive_outlined,
                        size: 20,
                        color: Colors.black.withOpacity(0.7),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'الارشيف',
                        style: Styles.textStyle12.copyWith(
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const CustomBadge(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

