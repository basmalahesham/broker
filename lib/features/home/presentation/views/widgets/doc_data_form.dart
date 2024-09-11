import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_drop_down_button.dart';
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
          TextFormField(
            validator: (value) {
              if (value == null||value.isEmpty) {
                return 'enter a value';
              }
              final int? number = int.tryParse(value);
              if (number == null || number > 10) {
                return 'Value must be less than or equal to 10';
              }
              return null;
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'عدد العقارات',
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