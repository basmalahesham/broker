import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomRowMenu extends StatelessWidget {
  const CustomRowMenu({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.textStyle12.copyWith(
            fontWeight: FontWeight.w400,
            color: Colors.black.withOpacity(0.7),
          ),
        ),
        Icon(
          icon,
          size: 20,
          color: const Color(0xFF332620).withOpacity(0.7),
        ),
      ],
    );
  }
}
