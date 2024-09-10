import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldVerification extends StatelessWidget {
  const TextFormFieldVerification({
    super.key,
    required this.first,
    required this.last,
    required this.controller,
  });

  final bool first;
  final bool last;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        if (value.isNotEmpty && last == false) {
          FocusScope.of(context).nextFocus();
        } else if (value.isNotEmpty && first == false) {
          FocusScope.of(context).previousFocus();
        }
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'enter a value';
        }
        return null;
      },
      keyboardType: TextInputType.number,
      inputFormatters: [LengthLimitingTextInputFormatter(1)],
      decoration: InputDecoration(
        constraints: const BoxConstraints(
          maxWidth: 50,
          maxHeight: 50,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
