import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_elevated_button.dart';
import 'package:broker/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DataForm extends StatefulWidget {
  const DataForm({super.key, required this.onNext});
  final VoidCallback onNext;

  @override
  State<DataForm> createState() => _DataFormState();
}

class _DataFormState extends State<DataForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'الاسم كامل',
            style: Styles.textStyle16.copyWith(
              color: const Color(0xFF332620).withOpacity(0.7),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          CustomTextFormField(
            controller: nameController,
            hintText: 'اكتب اسمك بالكامل',
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your name';
              }
              if (value.trim().length < 6) {
                return 'your name must be at least 6 characters';
              }
              return null;
            },
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'البريد الالكتروني',
            style: Styles.textStyle16.copyWith(
              color: const Color(0xFF332620).withOpacity(0.7),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          CustomTextFormField(
            controller: emailController,
            hintText: 'ادخل بريدك الالكتروني',
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your email';
              }
              var regex =
                  RegExp(r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9]+\.[a-zA-Z0-9-.]+$)");
              if (!regex.hasMatch(value)) {
                return 'Enter a valid email address';
              }
              return null;
            },
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'رقم الهاتف',
            style: Styles.textStyle16.copyWith(
              color: const Color(0xFF332620).withOpacity(0.7),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          CustomTextFormField(
            controller: phoneController,
            hintText: 'ادخل رقم الهاتف',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'enter a value';
              }
              if (value.length > 10) {
                return 'the phone field must not be greater than 10 characters';
              }
              if (value.length < 10) {
                return 'the phone field must be at least 10 characters';
              }
              return null;
            },
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: SizedBox(
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
          ),
        ],
      ),
    );
  }
}
