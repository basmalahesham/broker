import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_bottom_menu_sheet.dart';
import 'package:broker/features/layout/home_layout.dart';
import 'package:broker/features/layout/widgets/custom_text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ),
            Image.asset('assets/images/png-02.png'),
            Text(
              'Broker',
              style: Styles.textStyle22.copyWith(
                fontWeight: FontWeight.bold,
                color: kSecondaryColor,
              ),
            ),
            Text(
              'ليست مجرد منصة عقار',
              style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500,
                color: kSecondaryColor,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'مرحبا Basmala-Hesham',
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w500,
                color: const Color(0xFF332620),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const Divider(
              indent: 5,
              endIndent: 5,
              thickness: 1,
              color: Color(0xFF332620),
            ),
            CustomTextButtonWidget(
              text: 'الرئيسية',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeLayout(selectedIndex: 0),
                  ),
                );
              },
            ),
            CustomTextButtonWidget(
              text: 'الخريطة العقارية',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeLayout(selectedIndex: 1),
                  ),
                );
              },
            ),
            CustomTextButtonWidget(
              text: 'المشاريع العقارية',
              onPressed: () {},
            ),
            CustomTextButtonWidget(
              text: 'خدمات الملاك',
              onPressed: () {},
            ),
            Row(
              children: [
                CustomTextButtonWidget(
                  text: 'خدماتنا',
                  onPressed: () {},
                ),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
            CustomTextButtonWidget(
              text: 'تواصل معنا',
              onPressed: () {},
            ),
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                height: 40.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF332620),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    showCustomBottomSheet(context);
                  },
                  child: Text(
                    'انضم إلينا',
                    style: Styles.textStyle14.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => CustomBottomMenuSheet(),
    );
  }

}
