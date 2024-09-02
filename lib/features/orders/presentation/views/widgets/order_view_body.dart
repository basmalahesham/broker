import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:broker/features/orders/presentation/views/widgets/favourite_view.dart';
import 'package:broker/features/orders/presentation/views/widgets/menu_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderViewBody extends StatefulWidget {
  const OrderViewBody({
    super.key,
  });

  @override
  State<OrderViewBody> createState() => _OrderViewBodyState();
}

class _OrderViewBodyState extends State<OrderViewBody> {
  int selectedIndex = 0;

  List<Widget> screenWidgets = [
    const MenuView(),
    const FavouriteView(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'طلباتي',
                  style: Styles.textStyle22,
                ),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  height: 26.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: screenWidgets.length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        if (index == 2) {
                          showCustomBottomSheet();
                        } else {
                          setState(() {
                            selectedIndex = index;
                          });
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Container(
                          width: 104.w,
                          height: 26.h,
                          decoration: BoxDecoration(
                            color: selectedIndex == index
                                ? kSecondaryColor
                                : const Color(0xFFFEFEFE),
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(
                              color: selectedIndex == index
                                  ? Colors.transparent
                                  : const Color(0xFFAFAFAF),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                index == 0
                                    ? Icons.menu
                                    : index == 1
                                        ? Icons.favorite
                                        : Icons.add_circle_outline,
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              Text(
                                index == 0
                                    ? 'القائمة'
                                    : index == 1
                                        ? 'المفضلة'
                                        : 'إضافة طلب',
                                style: Styles.textStyle12.copyWith(
                                  color: selectedIndex == index
                                      ? Colors.white
                                      : const Color(0xFF332620),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        screenWidgets[selectedIndex],
      ],
    );
  }

  void showCustomBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        width: 375.w,
        color: Colors.red,
      ),
    );
  }
}