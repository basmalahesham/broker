import 'package:broker/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({super.key});

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  final items = [
    Image.asset('assets/images/Component 5.png', fit: BoxFit.cover),
    Image.asset('assets/images/Component 6.png', fit: BoxFit.cover),
    Image.asset('assets/images/Component 7.png', fit: BoxFit.cover),
    Image.asset('assets/images/Component 8.png', fit: BoxFit.cover),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            viewportFraction: 1.0, // Full width for each item
            enlargeCenterPage: false, // Disable enlargement to avoid gaps
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          items: items.map((item) {
            return SizedBox(
              width: 375.w,
              height: 200.h,
              child: item,
            );
          }).toList(),
        ),
        Positioned(
          bottom: 16.0,
          child: DotsIndicator(
            dotsCount: items.length,
            position: currentIndex,
            decorator:  DotsDecorator(
              activeColor: kSecondaryColor,
              color: Colors.grey,
              size: Size(10.w, 10.h),
            ),
          ),
        ),
      ],
    );
  }
}
