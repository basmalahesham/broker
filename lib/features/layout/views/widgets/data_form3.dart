import 'package:broker/core/utils/styles.dart';
import 'package:broker/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class DataForm3 extends StatefulWidget {
  const DataForm3({super.key, required this.onNext, required this.onPrevious});
  final VoidCallback onNext;
  final VoidCallback onPrevious;

  @override
  State<DataForm3> createState() => _DataForm3State();
}

class _DataForm3State extends State<DataForm3> {
  String? _imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ارفاق عقد ملكية العقار',
          style: Styles.textStyle16.copyWith(
            color: const Color(0xFF332620).withOpacity(0.7),
          ),
        ),
        SizedBox(height: 10.h),
        Row(
          children: [
            InkWell(
              onTap: () async {
                await pickImage();
              },
              child: Container(
                width: 120.w,
                height: 40.h,
                decoration: const BoxDecoration(
                  color: Color(0xFFE8EEEB),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(9),
                    bottomRight: Radius.circular(9),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Choose file',
                    style: Styles.textStyle16,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 40.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFE8EEEB),
                  ),
                ),
                child: Center(
                  child: Text(
                    _imagePath ?? 'No file chosen',
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 120.w,
              height: 40.h,
              child: CustomElevatedButton(
                onPressed: widget.onPrevious,
                text: 'السابق',
                backgroundColor: const Color(0xFF332620),
              ),
            ),
            SizedBox(
              width: 120.w,
              height: 40.h,
              child: CustomElevatedButton(
                onPressed: widget.onNext,
                text: 'التالي',
                backgroundColor: const Color(0xFF332620),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _imagePath = image.name;
      });
    }
  }
}
