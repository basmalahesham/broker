import 'package:broker/core/widgets/custom_drop_down_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';

class CustomCard extends StatefulWidget {
  final int activeButtonIndex;
  final Function(int) onChangeActiveButton;
  final GlobalKey<ScaffoldState> drawerKey;

  const CustomCard({
    super.key,
    required this.activeButtonIndex,
    required this.onChangeActiveButton,
    required this.drawerKey,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  final List<String> list1 = [
    'شقة',
    'فلة',
    'ارض سكنية',
    'عمارة',
    'دور',
    'محل تجاري',
    'ارض تجارية',
  ];
  final List<String> list2 = [
    'نوع العقار',
  ];
  final List<String> list3 = [
    'الرياض',
    'مكة المكرمة',
    'المدينة المنورة',
    'جدة',
    'تبوك',
    'الأحساء',
    'حائل',
    'عسير',
    'نجران',
    'جازان',
    'الباحة',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 12.0, left: 16, right: 16, bottom: 24),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => widget.onChangeActiveButton(1),
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: widget.activeButtonIndex == 0
                                ? Colors.white
                                : kSecondaryColor,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Text(
                        'طلب عقار',
                        style: Styles.textStyle14.copyWith(
                          color: widget.activeButtonIndex == 0
                              ? Colors.black
                              : kSecondaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  InkWell(
                    onTap: () => widget.onChangeActiveButton(0),
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: widget.activeButtonIndex == 1
                                ? Colors.white
                                : kSecondaryColor,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Text(
                        'طلب توثيق',
                        style: Styles.textStyle14.copyWith(
                          color: widget.activeButtonIndex == 1
                              ? Colors.black
                              : kSecondaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              widget.activeButtonIndex == 0
                  ? Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'نوع الخدمة',
                        style: Styles.textStyle14.copyWith(
                          color: const Color(0xFF332620).withOpacity(0.7),
                        ),
                      ),
                    )
                  : Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'نوع العقار',
                        style: Styles.textStyle14.copyWith(
                          color: const Color(0xFF332620).withOpacity(0.7),
                        ),
                      ),
                    ),
              SizedBox(height: 8.h,),
              widget.activeButtonIndex == 0
                  ? CustomDropDownButton(
                      items: list1,
                    )
                  : CustomDropDownButton(
                      items: list2,
                    ),
              SizedBox(
                height: 8.h,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'المدينة',
                  style: Styles.textStyle14.copyWith(
                    color: const Color(0xFF332620).withOpacity(0.7),
                  ),
                ),
              ),
              SizedBox(height: 8.h,),
              CustomDropDownButton(
                items: list3,
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
                    widget.drawerKey.currentState?.openDrawer();
                  },
                  child: Text(
                    'أضف طلبك',
                    style: Styles.textStyle14.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
