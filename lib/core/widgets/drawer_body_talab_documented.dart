import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_drop_down_button.dart';
import 'package:broker/core/widgets/custom_elevated_button.dart';
import 'package:broker/core/widgets/custom_text_form_field.dart';
import 'package:broker/core/widgets/widgets/custom_inkwell_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class DrawerBodyTalabDocumented extends StatefulWidget {
  const DrawerBodyTalabDocumented({super.key});

  @override
  _DrawerBodyTalabDocumentedState createState() =>
      _DrawerBodyTalabDocumentedState();
}

class _DrawerBodyTalabDocumentedState extends State<DrawerBodyTalabDocumented> {
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
                  'طلب موثق',
                  style: Styles.textStyle20.copyWith(
                    color: kSecondaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'نوع الخدمة',
                          style: Styles.textStyle14.copyWith(
                            color: const Color(0xFF332620).withOpacity(0.7),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      CustomDropDownButton(
                        items: list2,
                        filled: true,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'نوع العقار',
                          style: Styles.textStyle14.copyWith(
                            color: const Color(0xFF332620).withOpacity(0.7),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      CustomDropDownButton(
                        items: list1,
                        filled: true,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'عدد العقارات',
                          style: Styles.textStyle14.copyWith(
                            color: const Color(0xFF332620).withOpacity(0.7),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                       CustomTextFormField(
                        hintText: '',
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null||value.isEmpty) {
                            return 'enter a value';
                          }
                          final int? number = int.tryParse(value);
                          if (number == null || number > 10) {
                            return 'Value must be less than or equal to 10';
                          }
                          return null;
                        },

                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'تاريخ المقابلة',
                                style: Styles.textStyle14.copyWith(
                                  color:
                                      const Color(0xFF332620).withOpacity(0.7),
                                ),
                              ),
                              const SizedBox(height: 8),
                              CustomInkwellDate(
                                selectedDate: selectedDate,
                                onTap: () {
                                  selectDateTime();
                                },
                                text: (DateFormat.yMd().format(selectedDate)),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'وقت المقابلة',
                                style: Styles.textStyle14.copyWith(
                                  color:
                                      const Color(0xFF332620).withOpacity(0.7),
                                ),
                              ),
                              const SizedBox(height: 8),
                              CustomInkwellDate(
                                selectedDate: selectedDate,
                                onTap: () {
                                  selectTime();
                                },
                                text:
                                    '${selectedTime.hour}:${selectedTime.minute}',
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'المدينة',
                          style: Styles.textStyle14.copyWith(
                            color: const Color(0xFF332620).withOpacity(0.7),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      CustomDropDownButton(
                        items: list3,
                        filled: true,
                      ),
                      const SizedBox(height: 10),
                      Image.asset('assets/images/Frame.png'),
                      const SizedBox(height: 10),
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
      initialEntryMode: TimePickerEntryMode.inputOnly,
      cancelText: 'Cancel',
      confirmText: 'Set',
      helpText: 'Set Time',
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }
}
