import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_drop_down_button.dart';
import 'package:broker/core/widgets/custom_elevated_button.dart';
import 'package:broker/core/widgets/custom_text_form_field.dart';
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
                  SizedBox(
                    width: 110.w,
                    height: 40.h,
                    child: CustomTextFormField(
                      hintText: '',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'enter a value';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                    ),
                  ),
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
                  SizedBox(
                    width: 110.w,
                    height: 40.h,
                    child: CustomTextFormField(
                      hintText: '',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'enter a value';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                    ),
                  ),
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
          const CustomTextFormField(
            hintText: '200',
            keyboardType: TextInputType.number,
            maxHeight: 50,
          ),
          SizedBox(height: 20.h),
          SizedBox(
            width: 300.w,
            height: 40.h,
            child: CustomElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  widget.onNext();
                }
              },
              text: 'التالي',
              backgroundColor: const Color(0xFF332620),
            ),
          ),
        ],
      ),
    );
  }
}
