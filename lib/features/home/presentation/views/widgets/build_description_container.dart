
import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildDescriptionContainer extends StatelessWidget {
  const BuildDescriptionContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344.w,
      height: 359.h,
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2).withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFFAFAFAF).withOpacity(0.5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'الوصف',
              style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500,
                color: const Color(0xFF332620),
              ),
            ),
            Text(
              'للبيع من المالك مباشره بدون عمولة.\nشقق تمليك في الطايف جديدة الحويه مخطط\nجوهرة الحويه مخطط جديد في سنتر الحويه شقتين في الدور الاول.\n\nتتكون من : مجلس دورة مياه رجال مقلط او غرفة طعام   صاله مطبخ غرفة عامله وغسيل غرفة نوم ماستر و حمام غرفة اطفال مدخلين رجال ونساء خزان مستقل  عداد     مستقل مصعد  على الكود السعودي صك مستقل.\nالمرافق : جامع وحديقه  قريبه من جامعة الطائف  قرببه من مول أنتر الحويه الجديد.\nرقم رخصة فال للوساطة والتسويق:1100001710',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w400,
                color: const Color(0xFF332620),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
