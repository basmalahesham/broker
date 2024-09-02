import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 200.h,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Text(
              'حدد طلبك',
              style: Styles.textStyle20.copyWith(
                fontWeight: FontWeight.w500,
                color: kSecondaryColor,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Container(
                  width: 150.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFEFEFE),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xFFAFAFAF),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.home_sharp,
                        color: Color(0xFF332620),
                        size: 28,
                      ),
                      Text(
                        'طلب عقار',
                        style: Styles.textStyle16.copyWith(
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFF332620),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20.w,),
                Container(
                  width: 150.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFEFEFE),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xFFAFAFAF),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.person,
                        color: Color(0xFF332620),
                        size: 28,
                      ),
                      Text(
                        'طلب موثق',
                        style: Styles.textStyle16.copyWith(
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFF332620),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
