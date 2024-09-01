import 'package:broker/features/home/data/models/model.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  CustomListView({super.key});
  final List<Model> list = [
    Model(image: 'assets/images/Frame 1171275246.png', title: 'الرياض'),
    Model(image: 'assets/images/Frame 1171275247.png', title: 'مكة'),
    Model(image: 'assets/images/Frame 1171275248.png', title: 'جدة'),
    Model(image: 'assets/images/Frame 1171275249.png', title: 'الدمام'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .16,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomImage(
              model: list[index],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
