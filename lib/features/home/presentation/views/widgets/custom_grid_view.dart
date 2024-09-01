import 'package:broker/features/home/data/models/model.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGridView extends StatelessWidget {
  CustomGridView({super.key});
  final List<Model> list = [
    Model(image: 'assets/images/Frame 1171275252.png', title: 'طلب عقار'),
    Model(image: 'assets/images/Frame 1171275254.png', title: 'طلب موثق'),

    Model(image: 'assets/images/Frame 1171275253.png', title: 'أضافه عقارك'),
    Model(
        image: 'assets/images/أفضل-مكاتب-عقار-في-العراق.png', title: 'أضافه مكتب عقاري'),
    Model(
        image: 'assets/images/أفضل_مكاتب_العقار_في_أبها.png', title: 'أضافه مكتب توثيق'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          childCount: list.length,
          (context, index) => CustomImage(
            width: 159.w,
            height: 85.h,
            model: list[index],
          ),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.h,
          crossAxisSpacing: 16.w,
          childAspectRatio: 2.0,
        ),
      ),
    );
  }
}
