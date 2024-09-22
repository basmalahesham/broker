import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_drop_down_button.dart';
import 'package:broker/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildPropertyDataForm2 extends StatefulWidget {
  const BuildPropertyDataForm2(
      {super.key, required this.onNext, required this.onPrevious});

  final VoidCallback onNext;
  final VoidCallback onPrevious;

  @override
  State<BuildPropertyDataForm2> createState() => _BuildPropertyDataForm2State();
}

class _BuildPropertyDataForm2State extends State<BuildPropertyDataForm2> {
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Text(
            'المدينة',
            style: Styles.textStyle14.copyWith(
              color: const Color(0xFF332620).withOpacity(0.7),
            ),
          ),
        ),
        SizedBox(height: 8.h),
        CustomDropDownButton(
          items: list1,
          filled: true,
        ),
        SizedBox(height: 10.h),
        Image.asset('assets/images/Frame.png'),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 120.w,
              height: 40.h,
              child: CustomElevatedButton(
                onPressed: widget.onPrevious,
                text: 'السابق',
                backgroundColor: const Color(0xFF332620),
              ),
            ),
            SizedBox(
              width: 120.w,
              height: 40.h,
              child: CustomElevatedButton(
                onPressed: widget.onNext,
                text: 'التالي',
                backgroundColor: const Color(0xFF332620),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
