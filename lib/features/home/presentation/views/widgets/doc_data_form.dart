import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_drop_down_button.dart';
import 'package:broker/core/widgets/custom_elevated_button.dart';
import 'package:broker/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocDataForm extends StatefulWidget {
  const DocDataForm({super.key, required this.onNext});

  final VoidCallback onNext;

  @override
  State<DocDataForm> createState() => _DocDataFormState();
}

class _DocDataFormState extends State<DocDataForm> {
  final List<String> list4 = [
    'شقة',
    'فلة',
    'ارض سكنية',
    'عمارة',
    'دور',
    'محل تجاري',
    'ارض تجارية',
  ];

  final List<String> list1 = [
    'افراغ عقاري',
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
              'نوع الخدمة',
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
            items: list4,
            filled: true,
          ),
          SizedBox(height: 10.h),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              'عدد العقارات',
              style: Styles.textStyle14.copyWith(
                color: const Color(0xFF332620).withOpacity(0.7),
              ),
            ),
          ),
          SizedBox(height: 8.h),
          CustomTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'enter a value';
              }
              final int? number = int.tryParse(value);
              if (number == null || number > 10) {
                return 'Value must be less than or equal to 10';
              }
              return null;
            },
            keyboardType: TextInputType.number,
            hintText: 'عدد العقارات',
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
