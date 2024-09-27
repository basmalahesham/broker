import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildAdditionalDetailsContainer extends StatelessWidget {
  const BuildAdditionalDetailsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344.w,
      height: 257.h,
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadiusDirectional.circular(7),
        border: Border.all(
          color: const Color(0xFFD3D3D3),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'التفاصيل أضافيه',
              style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500,
                color: const Color(0xFF332620),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "• " 'عمر العقار',
                  style: Styles.textStyle14.copyWith(
                    color: const Color(0xFF332620).withOpacity(0.7),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '3سنوات',
                  style: Styles.textStyle16
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "• " 'الطابق',
                  style: Styles.textStyle14.copyWith(
                    color: const Color(0xFF332620).withOpacity(0.7),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'الدور الاول',
                  style: Styles.textStyle16
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "• " 'المساحه',
                  style: Styles.textStyle14.copyWith(
                    color: const Color(0xFF332620).withOpacity(0.7),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '160',
                  style: Styles.textStyle16
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "• " 'تاريخ الاعلان',
                  style: Styles.textStyle14.copyWith(
                    color: const Color(0xFF332620).withOpacity(0.7),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'منذ 9 ساعات',
                  style: Styles.textStyle16
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
