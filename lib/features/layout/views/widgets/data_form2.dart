import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_drop_down_button.dart';

class DataForm2 extends StatefulWidget {
  const DataForm2({super.key, required this.onNext, required this.onPrevious});
  final VoidCallback onNext;
  final VoidCallback onPrevious;
  @override
  State<DataForm2> createState() => _DataForm2State();
}

class _DataForm2State extends State<DataForm2> {
  final List<String> list1 = [
    'الرياض',
    'مكة المكرمة',
    'المدينة المنورة',
    'جدة',
    'تبوك',
    'الأحساء',
    'حائل',
    'عسير',
    'نجران',
    'جازان',
    'الباحة',
  ];
  final List<String> list2 = [
    'شقة',
    'فلة',
    'ارض سكنية',
    'عمارة',
    'دور',
    'محل تجاري',
    'ارض تجارية',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'نوع العقار',
          style: Styles.textStyle16.copyWith(
            color: const Color(0xFF332620).withOpacity(0.7),
          ),
        ),
        SizedBox(height: 8.h),
        CustomDropDownButton(
          items: list2,
          filled: true,
        ),
        SizedBox(height: 10.h),
        Text(
          'المدينة',
          style: Styles.textStyle16.copyWith(
            color: const Color(0xFF332620).withOpacity(0.7),
          ),
        ),
        SizedBox(height: 8.h),
        CustomDropDownButton(
          items: list1,
          filled: true,
        ),
        SizedBox(height: 10.h),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 120.w,
              height: 40.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF332620),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: widget.onPrevious, // Call the onPrevious function
                child: Text(
                  'السابق',
                  style: Styles.textStyle14.copyWith(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              width: 120.w,
              height: 40.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF332620),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: widget.onNext, // Call the onNext function
                child: Text(
                  'التالي',
                  style: Styles.textStyle14.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),

      ],
    );
  }
}
