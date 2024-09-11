import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_drop_down_button.dart';
import 'package:broker/core/widgets/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildPropertyDataForm extends StatefulWidget {
  const BuildPropertyDataForm({super.key, required this.onNext});

  final VoidCallback onNext;

  @override
  State<BuildPropertyDataForm> createState() => _BuildPropertyDataFormState();
}

class _BuildPropertyDataFormState extends State<BuildPropertyDataForm> {
  final List<String> list1 = [
    'شقة',
    'فلة',
    'ارض سكنية',
    'عمارة',
    'دور',
    'محل تجاري',
    'ارض تجارية',
  ];

  final List<String> list4 = [
    'بيع',
    'اجار',
    'اجار اسبوعي',
    'اجارة يومي',
  ];
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Text(
              'نوع العقار',
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
          Align(
            alignment: Alignment.topRight,
            child: Text(
              'نوع الطلب',
              style: Styles.textStyle14.copyWith(
                color: const Color(0xFF332620).withOpacity(0.7),
              ),
            ),
          ),
          SizedBox(height: 8.h),
          CustomDropDownButton(
            items: list4,
            filled: true,
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'السعر من',
                    style: Styles.textStyle14.copyWith(
                      color: const Color(0xFF332620).withOpacity(0.7),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  const CustomTextFormField(text: ''),
                ],
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'السعر الى',
                    style: Styles.textStyle14.copyWith(
                      color: const Color(0xFF332620).withOpacity(0.7),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  const CustomTextFormField(text: ''),
                ],
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              'المساحة بالمتر المربع',
              style: Styles.textStyle14.copyWith(
                color: const Color(0xFF332620).withOpacity(0.7),
              ),
            ),
          ),
          SizedBox(height: 8.h),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: '200',
              fillColor: Colors.white,
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
                borderSide: const BorderSide(color: Color(0xFFAFAFAF)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
                borderSide: const BorderSide(color: Color(0xFFAFAFAF)),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
                borderSide: const BorderSide(color: Color(0xFFAFAFAF)),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            width: 300.w,
            height: 40.h,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF332620),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  widget.onNext();
                }
              }, // Call the onNext function
              child: Text(
                'التالي',
                style: Styles.textStyle14.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
