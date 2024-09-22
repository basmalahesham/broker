import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomRowCheck extends StatefulWidget {
  const CustomRowCheck({
    super.key,
    required this.text,
    this.isChecked = false,
  });

  final String text;
  final bool isChecked;

  @override
  State<CustomRowCheck> createState() => _CustomRowCheckState();
}

class _CustomRowCheckState extends State<CustomRowCheck> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.isChecked; // Initialize local state
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          side: const BorderSide(
            color: Color(0xFFAFAFAF),
          ),
          activeColor: Colors.blue,
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value ?? false; // Update local state
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