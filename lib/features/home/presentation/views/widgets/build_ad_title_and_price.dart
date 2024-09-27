import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BuildAdTitleAndPriceAndLocation extends StatelessWidget {
  const BuildAdTitleAndPriceAndLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'شقة للبيع',
              style: Styles.textStyle20.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              ' 2,324 ريال',
              style: Styles.textStyle24.copyWith(
                color: const Color(0xFF332620),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Text(
            '23 شارع الحج , الرحمانية , الرياض',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w400,
              color: const Color(0xFF332620).withOpacity(0.7),
            ),
          ),
        ),
      ],
    );
  }
}
