import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:broker/features/auth/presentation/views/widgets/text_form_field_verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneVerificationView extends StatefulWidget {
  const PhoneVerificationView({super.key});
  static const String routeName = 'phone_verification_view';

  @override
  State<PhoneVerificationView> createState() => _PhoneVerificationViewState();
}

class _PhoneVerificationViewState extends State<PhoneVerificationView> {
  final formKey = GlobalKey<FormState>();
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();
  TextEditingController c3 = TextEditingController();
  TextEditingController c4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as String;
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
                  height: 600.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFDFDFD),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/WhatsApp_Image_2024-09-10_at_9.33.12_PM-removebg-preview.png',
                      ),
                      Text(
                        'من فضلك قم بادخال الكود المرسل اليك لاستكمال عملية التسجيل',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.w500,
                          color: kSecondaryColor,
                        ),
                      ),
                      Text(
                        'تم ارسال كود التحقق الى ${args}',
                        style: Styles.textStyle14.copyWith(
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFF332620),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextFormFieldVerification(
                            controller: c1,
                            last: false,
                            first: true,
                          ),
                          TextFormFieldVerification(
                            controller: c2,
                            last: false,
                            first: false,
                          ),
                          TextFormFieldVerification(
                            controller: c3,
                            last: false,
                            first: false,
                          ),
                          TextFormFieldVerification(
                            controller: c4,
                            last: true,
                            first: false,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 130.w,
                        height: 40.h,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kSecondaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'تأكيد',
                            style: Styles.textStyle14.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 130.w,
                        height: 40.h,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kSecondaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'اعادة الارسال',
                            style: Styles.textStyle14.copyWith(
                              color: Colors.white,
                            ),
                          ),
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
}
