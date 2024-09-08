import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomRowCheckHome extends StatefulWidget {
   CustomRowCheckHome({
    super.key,
    required this.text,
    this.isChecked = false,
  });

  final String text;
  bool? isChecked;
  @override
  State<CustomRowCheckHome> createState() => _CustomRowCheckHomeState();
}

class _CustomRowCheckHomeState extends State<CustomRowCheckHome> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          side: const BorderSide(
            color: Color(0xFFAFAFAF),
          ),
          activeColor: Colors.blue,
          value: widget.isChecked,
          onChanged: (value) {
            setState(() {
              widget.isChecked = value;
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
