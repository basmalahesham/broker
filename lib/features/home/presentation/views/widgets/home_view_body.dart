import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/drawer_body_talab_aqar.dart';
import 'package:broker/core/widgets/drawer_body_talab_documented.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_app-bar_home_view.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_card.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_grid_view.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_list_view_aqar_mmlka.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_list_view_most_interactive_ads.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_list_view_special_aqar.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_row.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  int activeButtonIndex = 1; // 0 for طلب توثيق ,  for طلب عقار 1

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      drawer: Drawer(
        backgroundColor: const Color(0xFFF5F5F5),
        child: getDrawerBody(),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBarHomeView(),
                const CustomCarouselSlider(),
                CustomCard(
                  activeButtonIndex: activeButtonIndex,
                  onChangeActiveButton: (index) {
                    setState(() {
                      activeButtonIndex = index;
                    });
                  },
                  drawerKey: drawerKey,
                ),
                const CustomRow(text: 'الاعلانات الاكثر تفاعلا'),
                const CustomListViewMostInteractiveAds(),
                const CustomRow(text: 'عقارات المملكة'),
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
          const SliverToBoxAdapter(
            child: Column(
              children: [
                CustomRow(text: 'عقارات مميزة'),
                CustomListViewSpecialAqar(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // This variable determines which body to display in the drawer
  Widget getDrawerBody() {
    if (activeButtonIndex == 0) {
      return const DrawerBodyTalabDocumented();
    } else {
      return const DrawerBodyTalabAqar();
    }
  }
}
