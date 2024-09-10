import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_text_form_field2.dart';
import 'package:broker/core/widgets/widgets/custom_row_check.dart';
import 'package:broker/features/auth/presentation/views/phone_register_view.dart';
import 'package:broker/features/layout/home_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  static const String routeName = 'login';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFE8EEEC),
      body: Form(
        key: formKey,
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(24),
            margin: const EdgeInsets.all(16),
            width: 400.w,
            height: 500.h,
            decoration: BoxDecoration(
              color: const Color(0xFFFDFDFD),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'تسجيل الدخول',
                  style: Styles.textStyle24.copyWith(
                    color: const Color(0xFF332620),
                  ),
                ),
                CustomTextFormField2(
                  controller: emailController,
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
                CustomTextFormField2(
                  controller: passwordController,
                  hintText: '**********',
                  obscureText: true,
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
                CustomRowCheck(text: 'تذكرني'),
                Text(
                  'هل نسيت كلمة المرور؟',
                  style: Styles.textStyle16.copyWith(
                    fontWeight: FontWeight.normal,
                    color: const Color(0xFFBF554B),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 260.w,
                      height: 40.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFBF554B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.pushReplacementNamed(
                              context,
                              HomeLayout.routeName,
                            );
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Success')),
                            );
                          }
                        }, // Call the onNext function
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'تسجيل دخول',
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
                    Center(
                      child: SizedBox(
                        width: 290.w,
                        height: 40.h,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1A4B42),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                              context,
                              PhoneRegisterView.routeName,
                            );
                          }, // Call the onNext function
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'انشاء حساب',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
