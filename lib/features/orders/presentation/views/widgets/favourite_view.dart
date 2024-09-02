import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 500.h,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/photo_5958491650131084556_y-removebg-preview.png',
                width: 100.w,
                height: 100.h,
              ),
              Text(
                'لم تقم بتفضيل شئ',
                style: Styles.textStyle22.copyWith(
                  fontWeight: FontWeight.bold,
                  color: kSecondaryColor,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
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
