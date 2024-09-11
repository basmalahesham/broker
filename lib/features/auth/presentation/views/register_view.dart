import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_text_form_field2.dart';
import 'package:broker/features/auth/presentation/views/login_view.dart';
import 'package:broker/features/layout/home_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});
  static const String routeName = 'register_view';

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController companyName = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
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
                  decoration: BoxDecoration(
                    color: const Color(0xFFFDFDFD),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'تسجيل',
                        style: Styles.textStyle24.copyWith(
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFF332620),
                        ),
                      ),
                      Text(
                        'الاسم كامل',
                        style: Styles.textStyle16.copyWith(
                          color: Color(0xFF332620).withOpacity(0.7),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: Color(0xFFE8EEEB),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                              ),
                            ),
                            child: Icon(
                              Icons.person_pin_sharp,
                              color: const Color(0xFFBF554B),
                            ),
                          ),

                          Expanded(
                            child: CustomTextFormField2(
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
                          ),
                        ],
                      ),
                      Text(
                        'البريد الالكتروني',
                        style: Styles.textStyle16.copyWith(
                          color: Color(0xFF332620).withOpacity(0.7),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: Color(0xFFE8EEEB),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                              ),
                            ),
                            child: Icon(
                              Icons.email_outlined,
                              color: const Color(0xFFBF554B),
                            ),
                          ),
                          Expanded(
                            child: CustomTextFormField2(
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
                          ),
                        ],
                      ),
                      Text(
                        'اسم الشركة',
                        style: Styles.textStyle16.copyWith(
                          color: Color(0xFF332620).withOpacity(0.7),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: Color(0xFFE8EEEB),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                              ),
                            ),
                            child: Icon(
                              Icons.email_outlined,
                              color: const Color(0xFFBF554B),
                            ),
                          ),
                          Expanded(
                            child: CustomTextFormField2(
                              controller: companyName,
                              hintText: 'ادخل اسم الشركة ان وجد',
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'كلمة المرور',
                        style: Styles.textStyle16.copyWith(
                          color: Color(0xFF332620).withOpacity(0.7),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: Color(0xFFE8EEEB),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                              ),
                            ),
                            child: Icon(
                              Icons.lock_outline,
                              color: const Color(0xFFBF554B),
                            ),
                          ),

                          Expanded(
                            child: CustomTextFormField2(
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
                          ),
                        ],
                      ),
                      Text(
                        'تأكيد كلمة المرور',
                        style: Styles.textStyle16.copyWith(
                          color: Color(0xFF332620).withOpacity(0.7),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: Color(0xFFE8EEEB),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                              ),
                            ),
                            child: Icon(
                              Icons.lock_outline,
                              color: const Color(0xFFBF554B),
                            ),
                          ),

                          Expanded(
                            child: CustomTextFormField2(
                              controller: confirmPasswordController,
                              hintText: '**********',
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'Please enter your confirmation password';
                                }
                                if (passwordController.text != value) {
                                  return 'enter correct password, password not match';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'رقم الهاتف',
                        style: Styles.textStyle16.copyWith(
                          color: Color(0xFF332620).withOpacity(0.7),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: Color(0xFFE8EEEB),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                              ),
                            ),
                            child: Icon(
                              Icons.phone_android_rounded,
                              color: const Color(0xFFBF554B),
                            ),
                          ),

                          Expanded(
                            child: CustomTextFormField2(
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
                          ),
                        ],
                      ),
                      Text(
                        'الصورة الشخصية',
                        style: Styles.textStyle16.copyWith(
                          color: Color(0xFF332620).withOpacity(0.7),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: Color(0xFFE8EEEB),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                              ),
                            ),
                            child: Icon(
                              Icons.perm_media_outlined,
                              color: const Color(0xFFBF554B),
                            ),
                          ),

                          Expanded(
                            child: CustomTextFormField2(
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
                          ),
                        ],
                      ),
                      Center(
                        child: SizedBox(
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
                              }
                            }, // Call the onNext function
                            child: Text(
                              'تسجيل',
                              style: Styles.textStyle14.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'هل لديك حساب بالفعل؟',
                            style: Styles.textStyle16.copyWith(
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF332620),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                context,
                                LoginView.routeName,
                              );
                            },
                            child: Text(
                              'سجل دخول',
                              style: Styles.textStyle16.copyWith(
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFFBF554B),
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
