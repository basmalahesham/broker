import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_bottom_menu_sheet.dart';
import 'package:broker/core/widgets/custom_text_form_field2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomLoginSheet extends StatefulWidget {
  const CustomBottomLoginSheet({super.key});

  @override
  State<CustomBottomLoginSheet> createState() => _CustomBottomLoginSheetState();
}

class _CustomBottomLoginSheetState extends State<CustomBottomLoginSheet> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 16,
            left: 16,
            top: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Text(
                'تسجيل الدخول',
                style: Styles.textStyle20.copyWith(
                  fontWeight: FontWeight.w500,
                  color: kSecondaryColor,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'البريد الالكتروني',
                style: Styles.textStyle18.copyWith(
                  //fontWeight: FontWeight.w500,
                  color: const Color(0xFF332620).withOpacity(0.7),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomTextFormField2(
                hintText: 'ادخل بريدك الالكتروني',
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your email';
                  }
                  var regex = RegExp(
                      r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9]+\.[a-zA-Z0-9-.]+$)");
                  if (!regex.hasMatch(value)) {
                    return 'Enter a valid email address';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'كلمة المرور',
                style: Styles.textStyle18.copyWith(
                  //fontWeight: FontWeight.w500,
                  color: const Color(0xFF332620).withOpacity(0.7),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomTextFormField2(
                hintText: '**********',
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your password';
                  }
                  var regex = RegExp(
                      r"(?=^.{8,}$)(?=.*[!@#$%^&*]+)(?![.\\n])(?=.*[A-Z])(?=.*[a-z]).*$");
                  if (!regex.hasMatch(value)) {
                    return 'enter a valid password';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: 130.w,
                height: 40.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF332620),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {}
                  }, // Call the onPrevious function
                  child: Text(
                    'تسجيل دخول',
                    style: Styles.textStyle14.copyWith(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'ما عندك حساب؟',
                style: Styles.textStyle16.copyWith(
                  //fontWeight: FontWeight.w500,
                  color: kSecondaryColor,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Center(
                child: SizedBox(
                  width: 290.w,
                  height: 40.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kSecondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {
                      showCustomBottomSheet(context);
                    }, // Call the onNext function
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'سجل معنا الان',
                          style: Styles.textStyle14.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const CustomBottomMenuSheet(),
    );
  }
}
