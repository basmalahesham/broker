import 'package:broker/core/utils/styles.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_app-bar_home_view.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_card.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_grid_view.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_list_view_aqar_mmlka.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_list_view_most_interactive_ads.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_list_view_special_aqar.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_row.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBarHomeView(),
              const CustomCarouselSlider(),
              const CustomCard(),
              const CustomRow(
                text: 'الاعلانات الاكثر تفاعلا',
              ),
              CustomListViewMostInteractiveAds(),
              const CustomRow(
                text: 'عقارات المملكة',
              ),
              CustomListViewAqarMmlka(),
              Padding(
                padding:
                    const EdgeInsets.only(right: 16.0, bottom: 16, top: 24),
                child: Text(
                  'خدماتنا',
                  style: Styles.textStyle16,
                ),
              ),
            ],
          ),
        ),
        CustomGridView(),
        SliverToBoxAdapter(
          child: Column(
            children: [
              const CustomRow(
                text: 'عقارات مميزة',
              ),
              CustomListViewSpecialAqar(),
            ],
          ),
        ),
      ],
    );
  }
}
