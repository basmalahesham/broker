import 'package:broker/features/home/presentation/views/widgets/custom_app-bar_home_view.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_card.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomAppBarHomeView()),
        SliverToBoxAdapter(child: CustomCarouselSlider()),
        SliverToBoxAdapter(child: CustomCard()),
      ],
    );
  }
}
