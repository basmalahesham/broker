import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildContactInfoContainer extends StatelessWidget {
  const BuildContactInfoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344.w,
      height: 85.h,
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadiusDirectional.circular(7),
        border: Border.all(
          color: const Color(0xFFD3D3D3),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          children: [
            Image.asset(
              'assets/images/Ellipse 2.png',
              width: 40,
              height: 40,
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'أبو نواف حميد',
                      style: Styles.textStyle15,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                        'assets/images/Checkmark [Filled].png'),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'وسيط عقاري',
                          style: Styles.textStyle13.copyWith(
                            color: const Color(0xFF332620)
                                .withOpacity(0.7),
                          ),
                        ),
                        Image.asset(
                            'assets/images/Frame 1000003778.png'),
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Container(
                      width: 111.w,
                      height: 28.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(
                          color: kSecondaryColor,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.chat,
                            color: kSecondaryColor,
                          ),
                          Text(
                            'تواصل مع المعلن',
                            style: Styles.textStyle10.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
