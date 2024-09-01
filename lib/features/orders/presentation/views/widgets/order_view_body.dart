import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'طلباتي',
            style: Styles.textStyle22,
          ),
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
          bottom: TabBar(
            dividerColor: Colors.transparent,
            padding: const EdgeInsets.all(8),
            indicatorPadding: const EdgeInsets.only(
              bottom: 8,
            ),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(23), // Creates border
              color: kSecondaryColor,
            ),
            labelColor: Colors.white,
            unselectedLabelColor: const Color(0xFF332620),
            tabs: <Widget>[
              Tab(
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    border: Border.all(
                      color: kSecondaryColor,
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.menu),
                      SizedBox(
                        width: 4,
                      ),
                      Text('القائمة'),
                    ],
                  ),
                ),
              ),
              Tab(
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    border: Border.all(
                      color: kSecondaryColor,
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite),
                      Text('المفضله'),
                    ],
                  ),
                ),
              ),
              Tab(
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    border: Border.all(
                      color: kSecondaryColor,
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_circle_outline),
                      Text('اضافة طلب'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child:
              SizedBox(
                height: 600.h,
                child: TabBarView(
                  children: [
                    ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 343.w,
                          height: 147.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color(0xFF332620),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 8.0, right: 16, left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.access_time_filled,
                                      color: Color(0xFFAFAFAF),
                                    ),
                                    Text(
                                      'منذ 3 ايام',
                                      style: Styles.textStyle12.copyWith(
                                        color: const Color(0xFFAFAFAF),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'شقة للبيع',
                                      style: Styles.textStyle16,
                                    ),
                                    Container(
                                      width: 102.w,
                                      height: 24.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(23),
                                        color: const Color(0xFF27C181),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'تم مراجعه الطلب',
                                          style: Styles.textStyle8.copyWith(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'الرياض',
                                  style: Styles.textStyle14.copyWith(
                                    color: Color(0xFF332620),
                                  ),
                                ),
                                Text(
                                  'الملك فهد , الرحبانية',
                                  style: Styles.textStyle12.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black.withOpacity(0.7),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'ر.س 25,000 -15,000',
                                      style: Styles.textStyle14.copyWith(
                                        color: kSecondaryColor,
                                      ),
                                    ),
                                    Container(
                                      width: 102.w,
                                      height: 24.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(23),
                                        color: const Color(0xFF332620),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'العروض المقدمة',
                                          style: Styles.textStyle8.copyWith(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:broker/features/orders/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomAppBar(),
            ],
          ),
        ),
      ],
    );
  }
}*/
