import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_app-bar_home_view.dart';
import 'package:broker/features/layout/views/follow_library.dart';
import 'package:broker/features/layout/views/talab_aqar_offer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonnelServicesView extends StatefulWidget {
  const PersonnelServicesView({super.key});
  static const String routeName = 'personnel_services';

  @override
  State<PersonnelServicesView> createState() => _PersonnelServicesViewState();
}

class _PersonnelServicesViewState extends State<PersonnelServicesView> {
  int selectedIndex = 0;
  List<Widget> screenWidgets = [
    const TalabAqarOffer(),
    const FollowLibrary(),
  ];
  List<String> list = [
    'طلب عرض عقار',
    'متابعة المكتبة العقارية',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const CustomAppBarHomeView(),
                Container(
                  padding: const EdgeInsets.all(16),
                  width: MediaQuery.sizeOf(context).width,
                  height: 60.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text(
                    'خدمات الملاك',
                    style: Styles.textStyle22.copyWith(
                      color: const Color(0xFF332620),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.all(16.0),
                  width: 450.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: screenWidgets.length,
                          itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                width: 150.w,
                                height: 60.h,
                                decoration: BoxDecoration(
                                  color: selectedIndex == index
                                      ? kSecondaryColor
                                      : const Color(0xFFEFF0F2),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    list[index],
                                    style: Styles.textStyle12.copyWith(
                                      color: selectedIndex == index
                                          ? Colors.white
                                          : const Color(0xFF332620),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h,),
                      screenWidgets[selectedIndex],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
