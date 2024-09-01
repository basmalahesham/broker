import 'package:broker/features/home/data/models/model.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewAqarMmlka extends StatelessWidget {
  CustomListViewAqarMmlka({super.key});
  final List<Model> list = [
    Model(image: 'assets/images/Frame 1171275246.png', title: 'الرياض'),
    Model(image: 'assets/images/Frame 1171275247.png', title: 'مكة'),
    Model(image: 'assets/images/Frame 1171275248.png', title: 'جدة'),
    Model(image: 'assets/images/Frame 1171275249.png', title: 'الدمام'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: SizedBox(
        height: 119.h,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomImage(
              height: 119.h,
              width: 108.w,
              model: list[index],
            ),
          ),
        ),
      ),
    );
  }
}
