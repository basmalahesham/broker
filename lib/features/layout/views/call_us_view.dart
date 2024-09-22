import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_drop_down_button.dart';
import 'package:broker/core/widgets/custom_elevated_button.dart';
import 'package:broker/core/widgets/custom_text_form_field.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_app-bar_home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallUsView extends StatefulWidget {
  const CallUsView({super.key});

  static const String routeName = 'call_us_view';

  @override
  State<CallUsView> createState() => _CallUsViewState();
}

class _CallUsViewState extends State<CallUsView> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();
  final List<String> list1 = [
    'دعم فني',
    'دعم تقني',
    'ابلاغ عن مشكلة',
  ];
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const CustomAppBarHomeView(),
                Container(
                  padding: const EdgeInsets.all(16),
                  width: MediaQuery.sizeOf(context).width,
                  height: 60.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text(
                    'تواصل معنا',
                    style: Styles.textStyle22.copyWith(
                      color: const Color(0xFF332620),
                    ),
                  ),
                ),
                Form(
                  key: formKey,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.all(16.0),
                    width: 450.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
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
                            var regex = RegExp(
                                r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9]+\.[a-zA-Z0-9-.]+$)");
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
                        Text(
                          'نوع الدعم',
                          style: Styles.textStyle16.copyWith(
                            color: const Color(0xFF332620).withOpacity(0.7),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomDropDownButton(items: list1),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'الرسالة',
                          style: Styles.textStyle16.copyWith(
                            color: const Color(0xFF332620).withOpacity(0.7),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        TextFormField(
                          maxLines: 3,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'اكتب هنا رسالتك بالتفصيل',
                            fillColor: Colors.white,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Center(
                          child: SizedBox(
                            width: 280.w,
                            height: 40.h,
                            child: CustomElevatedButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {}
                              },
                              text: 'ارسال',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
