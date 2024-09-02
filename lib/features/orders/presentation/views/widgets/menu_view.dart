import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuView extends StatelessWidget {
  const MenuView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
            (context, index) => Padding(
          padding: const EdgeInsets.only(
            bottom: 16.0,
            left: 16,
            right: 16,
          ),
          child: Container(
            width: 343.w,
            height: 147.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: const Color(0xFF332620),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 16, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.access_time_filled,
                        color: Color(0xFFAFAFAF),
                      ),
                      Text(
                        'منذ 3 ايام',
                        style: Styles.textStyle12.copyWith(
                          color: const Color(0xFFAFAFAF),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'شقة للبيع',
                        style: Styles.textStyle16,
                      ),
                      Container(
                        width: 102.w,
                        height: 24.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          color: const Color(0xFF27C181),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'تم مراجعه الطلب',
                            style: Styles.textStyle8.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'الرياض',
                    style: Styles.textStyle14.copyWith(
                      color: const Color(0xFF332620),
                    ),
                  ),
                  Text(
                    'الملك فهد , الرحبانية',
                    style: Styles.textStyle12.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ر.س 25,000 -15,000',
                        style: Styles.textStyle14.copyWith(
                          color: kSecondaryColor,
                        ),
                      ),
                      Container(
                        width: 102.w,
                        height: 24.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          color: const Color(0xFF332620),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'العروض المقدمة',
                            style: Styles.textStyle8.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
