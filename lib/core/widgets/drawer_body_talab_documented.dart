import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_drop_down_button.dart';
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
    return Padding(
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
          const SizedBox(height: 20),
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
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                CustomDropDownButton(items: list2),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'نوع العقار',
                    style: Styles.textStyle14.copyWith(
                      color: const Color(0xFF332620).withOpacity(0.7),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                CustomDropDownButton(items: list1),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'عدد العقارات',
                    style: Styles.textStyle14.copyWith(
                      color: const Color(0xFF332620).withOpacity(0.7),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  //inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                      borderSide: const BorderSide(
                        color: Color(0xFFAFAFAF),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                      borderSide: const BorderSide(
                        color: Color(0xFFAFAFAF),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'تاريخ المقابلة',
                          style: Styles.textStyle14.copyWith(
                            color: const Color(0xFF332620).withOpacity(0.7),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
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
                            color: const Color(0xFF332620).withOpacity(0.7),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        CustomInkwellDate(
                          selectedDate: selectedDate,
                          onTap: () {
                            selectTime();
                          },
                          text: '${selectedTime.hour}:${selectedTime.minute}',
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'المدينة',
                    style: Styles.textStyle14.copyWith(
                      color: const Color(0xFF332620).withOpacity(0.7),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                CustomDropDownButton(
                  items: list3,
                ),
                const SizedBox(height: 20),
                Image.asset('assets/images/Frame.png'),
                const SizedBox(height: 20),
                SizedBox(
                  width: 311.w,
                  height: 30.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kSecondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(color: Colors.red),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'طلب',
                      style: Styles.textStyle14.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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

class CustomInkwellDate extends StatelessWidget {
  const CustomInkwellDate({
    super.key,
    required this.selectedDate,
    required this.onTap,
    required this.text,
  });

  final DateTime selectedDate;
  final void Function() onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 110.w,
        // height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          border: Border.all(
            color: const Color(0xFFAFAFAF),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.normal,
                  color: const Color(0xFF332620).withOpacity(0.7),
                ),
              ),
              const Icon(Icons.keyboard_arrow_down_rounded),
            ],
          ),
        ),
      ),
    );
  }
}
