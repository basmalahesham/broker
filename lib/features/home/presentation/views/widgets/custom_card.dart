import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({super.key});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  int activeButtonIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16,
        top: 16.0,
      ),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 12.0,
            left: 16,
            right: 16,
            bottom: 24,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        activeButtonIndex =
                            1; // Set active button to "طلب عقار"
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: activeButtonIndex == 0
                                ? Colors.white
                                : kSecondaryColor,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Text(
                        'طلب عقار',
                        style: Styles.textStyle14.copyWith(
                          color: activeButtonIndex == 0
                              ? Colors.black
                              : kSecondaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  InkWell(
                    onTap: () {
                      setState(() {
                        activeButtonIndex =
                            0; // Set active button to "طلب توثيق"
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: activeButtonIndex == 1
                                ? Colors.white
                                : kSecondaryColor,
                            width: 1.0.w,
                          ),
                        ),
                      ),
                      child: Text(
                        'طلب توثيق',
                        style: Styles.textStyle14.copyWith(
                          color: activeButtonIndex == 1
                              ? Colors.black
                              : kSecondaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  width: 311.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(9),
                    ),
                    border: Border.all(
                      color: const Color(0xFFAFAFAF),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        activeButtonIndex == 0 ? 'نوع الخدمة' : 'نوع العقار',
                        style: Styles.textStyle14.copyWith(
                          color: const Color(0xFF332620),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color(0xFF332620),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  width: 311.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(9),
                    ),
                    border: Border.all(
                      color: const Color(0xFFAFAFAF),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'المدينة',
                        style: Styles.textStyle14.copyWith(
                          color: const Color(0xFF332620),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color(0xFF332620),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                width: 311.w,
                height: 40.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kSecondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(color: Colors.red),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'أضف طلبك',
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
    );
  }
}
