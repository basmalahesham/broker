import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_bottom_menu_sheet.dart';
import 'package:broker/core/widgets/custom_elevated_button.dart';
import 'package:broker/features/layout/home_layout.dart';
import 'package:broker/features/layout/views/call_us_view.dart';
import 'package:broker/features/layout/views/personnel_services_view.dart';
import 'package:broker/features/layout/widgets/custom_text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final GlobalKey _menuKey = GlobalKey();

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
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, PersonnelServicesView.routeName);
              },
            ),
            Row(
              children: [
                CustomTextButtonWidget(
                  key: _menuKey,
                  text: 'خدماتنا',
                  onPressed: () {
                    showMenuFun(context);
                  },
                ),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
            CustomTextButtonWidget(
              text: 'تواصل معنا',
              onPressed: () {
                Navigator.pushReplacementNamed(context, CallUsView.routeName);
              },
            ),
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                height: 40.h,
                child: CustomElevatedButton(
                  onPressed: () {
                    showCustomBottomSheet(context);
                  },
                  text: 'انضم إلينا',
                  backgroundColor: const Color(0xFF332620),
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
      builder: (context) => const CustomBottomMenuSheet(),
    );
  }

  void showMenuFun(BuildContext context) {
    final RenderBox button =
        _menuKey.currentContext!.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;

    final Offset buttonPosition = button.localToGlobal(Offset.zero);
    final Size buttonSize = button.size;
    showMenu(
      color: Colors.white,
      context: context,
      position: RelativeRect.fromLTRB(
        buttonPosition.dx,
        buttonPosition.dy +
            buttonSize.height, // Adjust Y position to be below the button
        overlay.size.width - buttonPosition.dx,
        overlay.size.height - buttonPosition.dy,
      ),
      items: [
        PopupMenuItem<int>(
          onTap: () {},
          value: 0,
          child: const Text(
            'متوسط الاسعار',
          ),
        ),
        PopupMenuItem<int>(
          onTap: () {},
          value: 1,
          child: const Text(
            'البورصة العقارية',
          ),
        ),
        PopupMenuItem<int>(
          onTap: () {},
          value: 1,
          child: const Text(
            'اخر الاخبار',
          ),
        ),
        PopupMenuItem<int>(
          onTap: () {},
          value: 1,
          child: const Text(
            'دليل المستخدم',
          ),
        ),
        PopupMenuItem<int>(
          onTap: () {},
          value: 1,
          child: const Text(
            'الاشتراك فى النشرة الاخبارية',
          ),
        ),
      ],
    );
  }
}
