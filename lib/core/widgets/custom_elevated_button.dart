import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    this.text,
    this.backgroundColor,
    this.borderRadius, this.child,
  });

  final void Function() onPressed;
  final String? text;
  final Color? backgroundColor;
  final double? borderRadius;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? kSecondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 5),
        ),
      ),
      onPressed: onPressed,
      child: child??Text(
        text!,
        style: Styles.textStyle14.copyWith(color: Colors.white),
      ),
    );
  }
}
