import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewMostInteractiveAds extends StatelessWidget {
  const CustomListViewMostInteractiveAds({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(),
      child: SizedBox(
        height: 284.h,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              height: 284.h,
              width: 210.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/unsplash_gREquCUXQLI.png',
                        fit: BoxFit.fill,
                        width: 210.w,
                        height: 135.h,
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: Container(
                          width: 40.w,
                          height: 14.h,
                          decoration: BoxDecoration(
                            color: const Color(0xFF61A9FD),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            textAlign: TextAlign.center,
                            'متاح',
                            style: Styles.textStyle8.copyWith(
                              color: const Color(0xFFFBFBFB),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                          left: 10,
                          top: 10,
                          child: Icon(
                            Icons.favorite,
                            color: kSecondaryColor,
                            size: 24,
                          )),
                      Positioned(
                        right: 55,
                        bottom: 16.0,
                        child: DotsIndicator(
                          dotsCount: 5,
                          reversed: true,
                          position: index,
                          decorator:  DotsDecorator(
                            activeColor: kSecondaryColor,
                            color: Colors.grey,
                            size: Size(10.w, 10.h),
                          ),
                        ),
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '12,000ر.س',
                          style: Styles.textStyle16.copyWith(
                            color: kSecondaryColor,
                          ),
                        ),
                        Text(
                          'منذ ساعه',
                          style: Styles.textStyle12.copyWith(
                            color: const Color(0xFFAFAFAF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'شقة مميزة في ابراج النرجس ارقي\nالشقق فالمملكه .',
                    style: Styles.textStyle12,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          '140م2',
                          style: Styles.textStyle12.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                        ImageIcon(
                          const AssetImage('assets/images/fa6-solid_bed.png'),
                          color: Colors.black.withOpacity(0.7),
                        ),
                        Text(
                          '3',
                          style: Styles.textStyle12.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                        ImageIcon(
                          const AssetImage(
                              'assets/images/fluent_couch-24-filled.png'),
                          color: Colors.black.withOpacity(0.7),
                        ),
                        Text(
                          '2',
                          style: Styles.textStyle12.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                        ImageIcon(
                          const AssetImage('assets/images/Vector.png'),
                          color: Colors.black.withOpacity(0.7),
                        ),
                        Text(
                          '2',
                          style: Styles.textStyle12.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const ImageIcon(
                        AssetImage('assets/images/mdi_location.png'),
                        color: Color(0xFF6F6662),
                      ),
                      Text(
                        'طريق الملك فهد ,الرحمانيه , الرياض',
                        style: Styles.textStyle11.copyWith(
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
