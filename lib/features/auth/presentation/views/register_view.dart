import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_elevated_button.dart';
import 'package:broker/core/widgets/custom_text_form_field.dart';
import 'package:broker/features/auth/presentation/views/login_view.dart';
import 'package:broker/features/layout/home_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

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
  String? _imagePath;
  //File? file;
  //String? _fileName;
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
                          color: const Color(0xFF332620).withOpacity(0.7),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: const BoxDecoration(
                              color: Color(0xFFE8EEEB),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                              ),
                            ),
                            child: const Icon(
                              Icons.person_pin_sharp,
                              color: Color(0xFFBF554B),
                            ),
                          ),
                          Expanded(
                            child: CustomTextFormField(
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
                          color: const Color(0xFF332620).withOpacity(0.7),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: const BoxDecoration(
                              color: Color(0xFFE8EEEB),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                              ),
                            ),
                            child: const Icon(
                              Icons.email_outlined,
                              color: Color(0xFFBF554B),
                            ),
                          ),
                          Expanded(
                            child: CustomTextFormField(
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
                          color: const Color(0xFF332620).withOpacity(0.7),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: const BoxDecoration(
                              color: Color(0xFFE8EEEB),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                              ),
                            ),
                            child: const Icon(
                              Icons.email_outlined,
                              color: Color(0xFFBF554B),
                            ),
                          ),
                          Expanded(
                            child: CustomTextFormField(
                              controller: companyName,
                              hintText: 'ادخل اسم الشركة ان وجد',
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'كلمة المرور',
                        style: Styles.textStyle16.copyWith(
                          color: const Color(0xFF332620).withOpacity(0.7),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: const BoxDecoration(
                              color: Color(0xFFE8EEEB),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                              ),
                            ),
                            child: const Icon(
                              Icons.lock_outline,
                              color: Color(0xFFBF554B),
                            ),
                          ),
                          Expanded(
                            child: CustomTextFormField(
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
                          color: const Color(0xFF332620).withOpacity(0.7),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: const BoxDecoration(
                              color: Color(0xFFE8EEEB),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                              ),
                            ),
                            child: const Icon(
                              Icons.lock_outline,
                              color: Color(0xFFBF554B),
                            ),
                          ),
                          Expanded(
                            child: CustomTextFormField(
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
                          color: const Color(0xFF332620).withOpacity(0.7),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: const BoxDecoration(
                              color: Color(0xFFE8EEEB),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                              ),
                            ),
                            child: const Icon(
                              Icons.phone_android_rounded,
                              color: Color(0xFFBF554B),
                            ),
                          ),
                          Expanded(
                            child: CustomTextFormField(
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
                          color: const Color(0xFF332620).withOpacity(0.7),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: const BoxDecoration(
                              color: Color(0xFFE8EEEB),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                              ),
                            ),
                            child: const Icon(
                              Icons.perm_media_outlined,
                              color: Color(0xFFBF554B),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await pickImage();
                            },
                            child: Container(
                              width: 120.w,
                              height: 40.h,
                              decoration: const BoxDecoration(
                                color: Color(0xFFE8EEEB),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(9),
                                  bottomRight: Radius.circular(9),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Choose file',
                                  style: Styles.textStyle16,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 40.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFFE8EEEB),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  _imagePath ?? 'No file chosen',
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ],
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
                              if (formKey.currentState!.validate()) {
                                Navigator.pushReplacementNamed(
                                  context,
                                  HomeLayout.routeName,
                                );
                              }
                            },
                            text: 'تسجيل',
                            backgroundColor: const Color(0xFFBF554B),
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

  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _imagePath = image.name;
      });
    }
  }

/*
  Future<void> _chooseFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        _fileName = result.files.single.name;
      });
    }
  }
*/
}
