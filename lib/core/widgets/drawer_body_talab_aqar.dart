import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_drop_down_button.dart';
import 'package:broker/core/widgets/custom_elevated_button.dart';
import 'package:broker/core/widgets/widgets/custom_row_check.dart';
import 'package:broker/core/widgets/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerBodyTalabAqar extends StatefulWidget {
  const DrawerBodyTalabAqar({super.key});

  @override
  _DrawerBodyTalabAqarState createState() => _DrawerBodyTalabAqarState();
}

class _DrawerBodyTalabAqarState extends State<DrawerBodyTalabAqar> {
  final _formKey = GlobalKey<FormState>();
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
  final List<String> list4 = [
    'بيع',
    'اجار',
    'اجار اسبوعي',
    'اجارة يومي',
  ];
  final List<String> list5 = [
    '1',
    '2',
    '3',
    '4',
    '5',
    'اكثر',
  ];
  final List<String> list6 = [
    'اقل من 1 سنة',
    'اقل من 2 سنة',
    'اقل من 3 سنة',
    'اقل من 4 سنة',
    'اقل من 5 سنة',
    'اقل من 6 سنة',
    'اقل من 7 سنة',
    'اقل من 8 سنة',
    'اقل من 9 سنة',
    'اقل من 10 سنة',
  ];
  final List<String> list7 = [
    'الكل',
    'شمال',
    'شرق',
    'غرب',
    'جنوب',
    'شمالي شرقي',
    'جنوبي شرقي',
    'جنوبي غربي',
    'شمال غربي',
    '3 شوراع',
    '4 شوارع',
  ];
  final List<String> list8 = [
    'الكل',
    'اكثر من 5',
    'اكثر من 10',
    'اكثر من 15',
    'اكثر من 20',
    'اكثر من 25',
    'اكثر من 30',
    'اكثر من 35',
    'اكثر من 40',
    'اكثر من 45',
    'اكثر من 50',
    'اكثر من 55',
    'اكثر من 60',
    'اكثر من 65',
    'اكثر من 70',
    'اكثر من 75',
    'اكثر من 80',
    'اكثر من 85',
    'اكثر من 90',
    'اكثر من 95',
    'اكثر من 100',
  ];

  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

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
                  'طلب العقار',
                  style: Styles.textStyle20.copyWith(
                    color: kSecondaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.h),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'نوع العقار  المرغوب',
                          style: Styles.textStyle14.copyWith(
                            color: const Color(0xFF332620).withOpacity(0.7),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomDropDownButton(
                        items: list1,
                        filled: true,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'نوع الطلب',
                          style: Styles.textStyle14.copyWith(
                            color: const Color(0xFF332620).withOpacity(0.7),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomDropDownButton(
                        items: list4,
                        filled: true,
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'السعر من',
                                style: Styles.textStyle14.copyWith(
                                  color:
                                      const Color(0xFF332620).withOpacity(0.7),
                                ),
                              ),
                              SizedBox(height: 8.h),
                              const CustomTextFormField(text: 'السعر الادنى'),
                            ],
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'السعر الى',
                                style: Styles.textStyle14.copyWith(
                                  color:
                                      const Color(0xFF332620).withOpacity(0.7),
                                ),
                              ),
                              SizedBox(height: 8.h),
                              const CustomTextFormField(text: 'السعر الاعلى'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'المدينة',
                          style: Styles.textStyle14.copyWith(
                            color: const Color(0xFF332620).withOpacity(0.7),
                          ),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      CustomDropDownButton(
                        items: list3,
                        filled: true,
                      ),
                      SizedBox(height: 10.h),
                      Image.asset('assets/images/Frame.png'),
                      SizedBox(height: 8.h),
                      const CustomRowCheck(text: 'درج داخلي'),
                      SizedBox(height: 8.h),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'عدد  الغرف',
                          style: Styles.textStyle14.copyWith(
                            color: const Color(0xFF332620).withOpacity(0.7),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomDropDownButton(
                        items: list5,
                        filled: true,
                      ),
                      SizedBox(height: 10.h),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'عدد الصالات',
                          style: Styles.textStyle14.copyWith(
                            color: const Color(0xFF332620).withOpacity(0.7),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomDropDownButton(
                        items: list5,
                        filled: true,
                      ),
                      SizedBox(height: 10.h),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'عدد دورات المياه',
                          style: Styles.textStyle14.copyWith(
                            color: const Color(0xFF332620).withOpacity(0.7),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomDropDownButton(
                        items: list5,
                        filled: true,
                      ),
                      SizedBox(height: 8.h),
                      const CustomRowCheck(text: 'مدخل سيارة'),
                      SizedBox(height: 8.h),
                      const CustomRowCheck(text: 'غرفة سايق'),
                      SizedBox(height: 8.h),
                      const CustomRowCheck(text: 'غرفة خادمة'),
                      SizedBox(height: 8.h),
                      const CustomRowCheck(text: 'مسبح'),
                      SizedBox(height: 8.h),
                      const CustomRowCheck(text: 'مؤثث'),
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'المساحة من',
                                style: Styles.textStyle14.copyWith(
                                  color:
                                      const Color(0xFF332620).withOpacity(0.7),
                                ),
                              ),
                              SizedBox(height: 8.h),
                              const CustomTextFormField(text: 'ادنى مساحة'),
                            ],
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'المساحة الى',
                                style: Styles.textStyle14.copyWith(
                                  color:
                                      const Color(0xFF332620).withOpacity(0.7),
                                ),
                              ),
                              SizedBox(height: 8.h),
                              const CustomTextFormField(
                                text: 'اعلى مساحة',
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'عمر العقار',
                          style: Styles.textStyle14.copyWith(
                            color: const Color(0xFF332620).withOpacity(0.7),
                          ),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      CustomDropDownButton(
                        items: list6,
                        filled: true,
                      ),
                      SizedBox(height: 10.h),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'الواجهة',
                          style: Styles.textStyle14.copyWith(
                            color: const Color(0xFF332620).withOpacity(0.7),
                          ),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      CustomDropDownButton(
                        items: list7,
                        filled: true,
                      ),
                      SizedBox(height: 8.h),
                      const CustomRowCheck(text: 'مطبخ'),
                      SizedBox(height: 8.h),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'عرض الشارع',
                          style: Styles.textStyle14.copyWith(
                            color: const Color(0xFF332620).withOpacity(0.7),
                          ),
                        ),
                      ),
                      SizedBox(height: 8.h),
                      CustomDropDownButton(
                        items: list8,
                        filled: true,
                      ),
                      SizedBox(height: 8.h),
                      const CustomRowCheck(text: 'قبو'),
                      SizedBox(height: 8.h),
                      const CustomRowCheck(text: 'الاعلانات المصورة فقط'),
                      SizedBox(height: 8.h),
                      SizedBox(
                        width: 311.w,
                        height: 30.h,
                        child: CustomElevatedButton(
                          onPressed: () {},
                          text: 'طلب',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  selectDateTime() async {
    var currentDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        const Duration(days: 365),
      ),
    );
    if (currentDate == null) {
      return;
    }
    selectedDate = currentDate;
    setState(() {});
  }

  selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }
}
