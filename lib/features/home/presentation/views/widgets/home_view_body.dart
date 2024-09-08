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
/*
class HomeViewBody extends StatefulWidget {
  HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  int activeButtonIndex = 1; // 0 for طلب توثيق, 1 for طلب عقار

  // This variable determines which body to display in the drawer
  Widget getDrawerBody() {
    if (activeButtonIndex == 0) {
      return Center(child: Text("Drawer Body for طلب توثيق"));
    } else {
      return Center(child: Text("Drawer Body for طلب عقار"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      drawer: Drawer(
        child: getDrawerBody(), // Use the method to get the drawer body
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
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 12.0, left: 16, right: 16, bottom: 24),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    activeButtonIndex =
                                    1; // Set active button to "طلب عقار"
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: activeButtonIndex == 0
                                            ? Colors.white
                                            : kSecondaryColor,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    'طلب عقار',
                                    style: Styles.textStyle14.copyWith(
                                      color: activeButtonIndex == 0
                                          ? Colors.black
                                          : kSecondaryColor,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.w),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    activeButtonIndex =
                                    0; // Set active button to "طلب توثيق"
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: activeButtonIndex == 1
                                            ? Colors.white
                                            : kSecondaryColor,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    'طلب توثيق',
                                    style: Styles.textStyle14.copyWith(
                                      color: activeButtonIndex == 1
                                          ? Colors.black
                                          : kSecondaryColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.only(top: 20),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 10),
                              width: 311.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(9),
                                ),
                                border: Border.all(
                                  color: const Color(0xFFAFAFAF),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    activeButtonIndex == 0
                                        ? 'نوع الخدمة'
                                        : 'نوع العقار',
                                    style: Styles.textStyle14.copyWith(
                                      color: const Color(0xFF332620),
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Color(0xFF332620),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.only(top: 20),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 10),
                              width: 311.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(9),
                                ),
                                border: Border.all(
                                  color: const Color(0xFFAFAFAF),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'المدينة',
                                    style: Styles.textStyle14.copyWith(
                                      color: const Color(0xFF332620),
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Color(0xFF332620),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 16.h),
                          SizedBox(
                            width: 311.w,
                            height: 40.h,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: kSecondaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: const BorderSide(color: Colors.red),
                                ),
                              ),
                              onPressed: () {
                                drawerKey.currentState?.openDrawer();
                              },
                              child: Text(
                                'أضف طلبك',
                                style: Styles.textStyle14
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
      ),
    );
  }
}*/
