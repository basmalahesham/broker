import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_elevated_button.dart';
import 'package:broker/core/widgets/custom_text_form_field.dart';
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
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFF332620),
                        ),
                      ),
                      CustomTextFormField(
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
                      CustomTextFormField(
                        controller: passwordController,
                        maxHeight: 50,
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
                            child: CustomElevatedButton(
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
                              },
                              text: 'تسجيل دخول',
                              backgroundColor: const Color(0xFFBF554B),
                            ),
                          ),
                          Center(
                            child: SizedBox(
                              width: 290.w,
                              height: 40.h,
                              child: CustomElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                    context,
                                    PhoneRegisterView.routeName,
                                  );
                                },
                                text: 'انشاء حساب',
                                backgroundColor: const Color(0xFF1A4B42),
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
          ),
        ],
      ),
    );
  }
}
