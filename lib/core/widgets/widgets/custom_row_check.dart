import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomRowCheck extends StatefulWidget {
  const CustomRowCheck({super.key, required this.text});

  final String text;
  @override
  State<CustomRowCheck> createState() => _CustomRowCheckState();
}

class _CustomRowCheckState extends State<CustomRowCheck> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          side: const BorderSide(
            color: Color(0xFFAFAFAF),
          ),
          activeColor: Colors.blue,
          //fillColor: const WidgetStatePropertyAll(Colors.white),
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value ?? false;
            });
          },
        ),
        Text(
          widget.text,
          style: Styles.textStyle14.copyWith(
            color: const Color(0xFF332620).withOpacity(0.7),
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}