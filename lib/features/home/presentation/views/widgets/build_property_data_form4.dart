import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/widgets/custom_row_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildPropertyDataForm4 extends StatefulWidget {
  const BuildPropertyDataForm4({super.key, required this.onPrevious, required this.onReset});
  final VoidCallback onReset;
  final VoidCallback onPrevious;

  @override
  State<BuildPropertyDataForm4> createState() => _BuildPropertyDataForm4State();
}

class _BuildPropertyDataForm4State extends State<BuildPropertyDataForm4> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Text(
            'ملاحظات الطلب',
            style: Styles.textStyle14.copyWith(
              color: const Color(0xFF332620).withOpacity(0.7),
            ),
          ),
        ),
        SizedBox(height: 8.h),
        TextFormField(
          maxLines: 3,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: 'يمكنك هنا وصف طلبك بالتفصيل',
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: const BorderSide(color: Color(0xFFAFAFAF)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: const BorderSide(color: Color(0xFFAFAFAF)),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: const BorderSide(color: Color(0xFFAFAFAF)),
            ),
          ),
        ),
        SizedBox(height: 10.h),
        CustomRowCheck(text: 'الموافقة على الشروط و الاحكام',isChecked: true,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 120.w,
              height: 40.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF332620),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: widget.onPrevious, // Call the onPrevious function
                child: Text(
                  'السابق',
                  style: Styles.textStyle14.copyWith(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              width: 120.w,
              height: 40.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF332620),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  widget.onReset();
                  showSnackBar(context);
                }, // Call the onNext function
                child: Text(
                  'طلب',
                  style: Styles.textStyle14.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
        backgroundColor: Colors.white,
        content: Column(
          children: [
            const Icon(
              Icons.check_circle,
              color: kSecondaryColor,
              size: 80,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'تم ارسال طلبك بنجاح',
              style: Styles.textStyle20.copyWith(
                color: kSecondaryColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'سوف نقوم بمراجعة طلبك وابلاغك فور نشره',
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.normal,
                color: const Color(0xFF332620),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 120.w,
              height: 40.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kSecondaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {}, // Call the onPrevious function
                child: Text(
                  'عرض طلباتى',
                  style: Styles.textStyle14.copyWith(
                    color: Colors.white,
                  ),
                ),
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
