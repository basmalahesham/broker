import 'package:broker/core/utils/styles.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_amenity_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildAmenitiesContainer extends StatelessWidget {
  const BuildAmenitiesContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344.w,
      height: 171.h,
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadiusDirectional.circular(10),
        border: Border.all(
          color: const Color(0xFFD3D3D3),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'الكماليات',
              style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Row(
              children: [
                CustomAmenityContainer(
                  text: 'مدخل خاص',
                ),
                SizedBox(
                  width: 13,
                ),
                CustomAmenityContainer(
                  text: 'مطبخ راكب',
                ),
                SizedBox(
                  width: 13,
                ),
                CustomAmenityContainer(
                  text: 'مصعد',
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              children: [
                CustomAmenityContainer(
                  text: 'مدخل سيارة',
                ),
                SizedBox(
                  width: 13,
                ),
                CustomAmenityContainer(
                  text: 'مكيفات راكبة',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

