import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextButtonWidget extends StatelessWidget {
  const CustomTextButtonWidget({
    super.key, required this.text, required this.onPressed,
  });

  final String text;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w400,
            color: const Color(0xFF332620),
          ),
        ),
      ),
    );
  }
}
