import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/widgets/custom_inkwell_container.dart';
import 'package:broker/features/auth/presentation/views/phone_register_view.dart';
import 'package:broker/features/auth/presentation/views/register_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomMenuSheet extends StatefulWidget {
  const CustomBottomMenuSheet({super.key});

  @override
  State<CustomBottomMenuSheet> createState() => _CustomBottomMenuSheetState();
}

class _CustomBottomMenuSheetState extends State<CustomBottomMenuSheet> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
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
              'حدد خدمتك!',
              style: Styles.textStyle20.copyWith(
                fontWeight: FontWeight.w500,
                color: kSecondaryColor,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                CustomInkwellContainer(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                      context,
                      PhoneRegisterView.routeName,
                    );
                  },
                  text: 'باحث عن عقار',
                  icon: Icons.person,
                ),
                SizedBox(
                  width: 20.w,
                ),
                CustomInkwellContainer(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                      context,
                      PhoneRegisterView.routeName,
                    );
                  },
                  text: 'مسوق عقاري',
                  icon: Icons.person_outline_sharp,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                CustomInkwellContainer(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                      context,
                      RegisterView.routeName,
                    );
                  },
                  text: 'موثق عقاري',
                  icon: Icons.person_pin_outlined,
                ),
                SizedBox(
                  width: 20.w,
                ),
                CustomInkwellContainer(
                  onTap: () {},
                  text: 'خدمات الملاك',
                  icon: Icons.person_2_outlined,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
