import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_elevated_button.dart';
import 'package:broker/core/widgets/custom_text_form_field.dart';
import 'package:broker/features/auth/presentation/views/otp_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneRegisterView extends StatefulWidget {
  const PhoneRegisterView({super.key});
  static const String routeName = 'phone_register_view';

  @override
  State<PhoneRegisterView> createState() => _PhoneRegisterViewState();
}

class _PhoneRegisterViewState extends State<PhoneRegisterView> {
  final formKey = GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFFE8EEEC),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Form(
                key: formKey,
                child: Container(
                  padding: const EdgeInsets.all(24),
                  margin: const EdgeInsets.all(16),
                  width: 400.w,
                  height: 300.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFDFDFD),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ادخل رقم الهاتف',
                        style: Styles.textStyle24.copyWith(
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFF332620),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'سوف يتم ارسال كود تحقق الى الرقم المدخل',
                        style: Styles.textStyle14.copyWith(
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFF332620),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'ادخل رقم الهاتف',
                        style: Styles.textStyle16.copyWith(
                          color: Color(0xFF332620).withOpacity(0.7),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextFormField(
                        keyboardType: TextInputType.number,
                        controller: phoneController,
                        hintText: '0512345678',
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
                        height: 35.h,
                      ),
                      SizedBox(
                        width: 100.w,
                        height: 40.h,
                        child: CustomElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.pushReplacementNamed(
                                context,
                                OTPView.routeName,
                                arguments: phoneController.text,
                              );
                              showSnackBar(context);
                            }
                          },
                          text: 'التالي',
                          backgroundColor: const Color(0xFFBF554B),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color(0xFF72B371),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Success',
                  style: Styles.textStyle20.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'تم ارسال كود التحقق',
                  style: Styles.textStyle14.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10.w,
            ),
            const Icon(
              Icons.check,
              color: Colors.white,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }
}
