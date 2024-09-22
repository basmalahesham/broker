import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewSpecialAqar extends StatelessWidget {
  const CustomListViewSpecialAqar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8.0,
        bottom: 34,
      ),
      child: SizedBox(
        height: 119.h,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 119.h,
              width: 108.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: const Color(0xFFAFAFAF),
                ),
              ),
              child: Column(
                children: [
                  Image.asset(
                      'assets/images/pngtree-real-estate-company-logo-design.-png-image_3628054 1.png'),
                  Text(
                    'Lorem ipsum',
                    style: Styles.textStyle12,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
