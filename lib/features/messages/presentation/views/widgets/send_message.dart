import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendMessage extends StatelessWidget {
  const SendMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 64.h,
      decoration: BoxDecoration(
        color: const Color(0xFFFEFEFE),
        border: Border.all(
          color: const Color(0xFFAFAFAF),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 32.h,
              width: 32.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFFE84336).withOpacity(0.75),
                    const Color(0xFFE84336).withOpacity(0.7963),
                    const Color(0xFFE84336).withOpacity(0.8659),
                    const Color(0xFFE84336).withOpacity(0.9335),
                    const Color(0xFFE84336).withOpacity(1.0),
                  ],
                  stops: const [0.0, 0.7963, 0.8659, 0.9335, 1.0],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.send_rounded,
                  color: Color(0xFFFBFBFB),
                ),
              ),
            ),
            SizedBox(
              width: 294.w,
              height: 32.h,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'اكتب رساله هنا ',
                  hintStyle: Styles.textStyle12.copyWith(
                    fontWeight: FontWeight.w300,
                    color: Colors.black.withOpacity(0.7),
                  ),
                  fillColor: const Color(0xFFFEFEFF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(
                      color: Color(0xFFAFAFAF),
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
}
