import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({
    super.key,
  });

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  int activeButtonIndex = 1; // 0 for طلب توثيق ,  for طلب عقار 1

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      drawer: Drawer(
        child: getDrawerBody(),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Text(
              'حدد طلبك',
              style: Styles.textStyle20.copyWith(
                fontWeight: FontWeight.w500,
                color: kSecondaryColor,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      activeButtonIndex = 1;
                    });
                    drawerKey.currentState?.openDrawer();
                  },
                  child: Container(
                    width: 150.w,
                    height: 80.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFEFEFE),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xFFAFAFAF),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.home_sharp,
                          color: Color(0xFF332620),
                          size: 28,
                        ),
                        Text(
                          'طلب عقار',
                          style: Styles.textStyle16.copyWith(
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFF332620),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.w,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      activeButtonIndex = 0;
                    });
                    drawerKey.currentState?.openDrawer();
                  },
                  child: Container(
                    width: 150.w,
                    height: 80.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFEFEFE),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xFFAFAFAF),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.person,
                          color: Color(0xFF332620),
                          size: 28,
                        ),
                        Text(
                          'طلب موثق',
                          style: Styles.textStyle16.copyWith(
                            fontWeight: FontWeight.normal,
                            color: const Color(0xFF332620),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget getDrawerBody() {
    if (activeButtonIndex == 0) {
      return const Center(child: Text("Drawer Body for طلب توثيق"));
    } else {
      return const Center(child: Text("Drawer Body for طلب عقار"));
    }
  }
}
