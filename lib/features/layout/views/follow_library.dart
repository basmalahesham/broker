import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_elevated_button.dart';
import 'package:broker/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FollowLibrary extends StatefulWidget {
  const FollowLibrary({super.key});

  @override
  State<FollowLibrary> createState() => _FollowLibraryState();
}

class _FollowLibraryState extends State<FollowLibrary> {
  TextEditingController libNum = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'رقم المكتبة',
            style: Styles.textStyle16.copyWith(
              color: Color(0xFF332620).withOpacity(0.7),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomTextFormField(
            keyboardType: TextInputType.number,
            controller: libNum,
            hintText: 'رجاء قم بكتابة رقم المكتبة',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'enter a value';
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
                    showSnackBar(context);
                  }
                },
                text: 'اطلع على المكتبة',
                backgroundColor: const Color(0xFF332620),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'رجاء قم بكتابة رقم المكتبة المرسل اليك من قبل مسوقنا و سوف يمكنك الاطلاع على عقاراتك المضافة لدينا',
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.normal,
              color: Color(0xFF332620).withOpacity(0.7),
            ),
          ),
          SizedBox(
            height: 40.h,
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
        backgroundColor: Colors.white,
        content: Column(
          children: [
            const Icon(
              Icons.maps_home_work_rounded,
              color: kSecondaryColor,
              size: 80,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'لا يوجد مكتبة للرقم المدخل',
              style: Styles.textStyle20.copyWith(
                color: kSecondaryColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 150.w,
              height: 40.h,
              child: CustomElevatedButton(
                onPressed: () {},
                text: 'طلب عرض عقار',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
