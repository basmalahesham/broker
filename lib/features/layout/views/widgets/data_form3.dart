import 'package:broker/core/utils/styles.dart';
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
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF332620),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: widget.onPrevious, // Call the onPrevious function
                child: Text(
                  'السابق',
                  style: Styles.textStyle14.copyWith(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              width: 120.w,
              height: 40.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF332620),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: widget.onNext, // Call the onNext function
                child: Text(
                  'التالي',
                  style: Styles.textStyle14.copyWith(color: Colors.white),
                ),
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
