import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_drop_down_button.dart';
import 'package:broker/core/widgets/widgets/custom_row_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildPropertyDataForm3 extends StatefulWidget {
  const BuildPropertyDataForm3(
      {super.key, required this.onNext, required this.onPrevious});

  final VoidCallback onNext;
  final VoidCallback onPrevious;

  @override
  State<BuildPropertyDataForm3> createState() => _BuildPropertyDataForm3State();
}

class _BuildPropertyDataForm3State extends State<BuildPropertyDataForm3> {
  final List<String> list1 = [
    'غير محدد',
    'ارضي',
    'الاول',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20+',
  ];
  final List<String> list5 = [
    '1',
    '2',
    '3',
    '4',
    '5+',
  ];
  final List<String> list4 = [
    'عوائل',
    'عزاب',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Text(
            'عدد  الغرف',
            style: Styles.textStyle14.copyWith(
              color: const Color(0xFF332620).withOpacity(0.7),
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomDropDownButton(
          items: list5,
          filled: true,
        ),
        SizedBox(height: 10.h),
        Align(
          alignment: Alignment.topRight,
          child: Text(
            'عوائل ام عزاب',
            style: Styles.textStyle14.copyWith(
              color: const Color(0xFF332620).withOpacity(0.7),
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomDropDownButton(
          items: list4,
          filled: true,
        ),
        SizedBox(
          height: 10.h,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Text(
            'حالة التأنيث',
            style: Styles.textStyle14.copyWith(
              color: const Color(0xFF332620).withOpacity(0.7),
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Row(
          children: [
             CustomRowCheck(text: 'مؤنثة'),
             CustomRowCheck(text: 'غير مؤنثة'),
          ],
        ),
        SizedBox(height: 10.h),
        Align(
          alignment: Alignment.topRight,
          child: Text(
            'الصالات',
            style: Styles.textStyle14.copyWith(
              color: const Color(0xFF332620).withOpacity(0.7),
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomDropDownButton(
          items: list5,
          filled: true,
        ),
        SizedBox(height: 10.h),
        Align(
          alignment: Alignment.topRight,
          child: Text(
            'عدد دورات المياه',
            style: Styles.textStyle14.copyWith(
              color: const Color(0xFF332620).withOpacity(0.7),
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomDropDownButton(
          items: list5,
          filled: true,
        ),
        SizedBox(
          height: 10.h,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Text(
            'هل تريد مدخل سيارة',
            style: Styles.textStyle14.copyWith(
              color: const Color(0xFF332620).withOpacity(0.7),
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Row(
          children: [
             CustomRowCheck(text: 'نعم'),
             CustomRowCheck(text: 'لا'),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Text(
            'الدور',
            style: Styles.textStyle14.copyWith(
              color: const Color(0xFF332620).withOpacity(0.7),
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomDropDownButton(
          items: list1,
          filled: true,
        ),
        SizedBox(height: 10.h),
        Align(
          alignment: Alignment.topRight,
          child: Text(
            'عمر العقار',
            style: Styles.textStyle14.copyWith(
              color: const Color(0xFF332620).withOpacity(0.7),
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomDropDownButton(
          items: list1,
          filled: true,
        ),
        SizedBox(
          height: 10.h,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Text(
            'التكيف',
            style: Styles.textStyle14.copyWith(
              color: const Color(0xFF332620).withOpacity(0.7),
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Row(
          children: [
             CustomRowCheck(text: 'مهتم'),
             CustomRowCheck(text: 'غير مهتم'),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Text(
            'المداخل',
            style: Styles.textStyle14.copyWith(
              color: const Color(0xFF332620).withOpacity(0.7),
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Row(
          children: [
             CustomRowCheck(text: 'مدحلين'),
             CustomRowCheck(text: 'مدخل خاص'),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 100.w,
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
              width: 100.w,
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
